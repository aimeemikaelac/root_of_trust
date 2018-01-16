// #include "CommunicationToProgram.h"
#include "enclave_library.h"
#include "system_config.h"
#include "user_mmap_driver.h"
#include <stdio.h>
#include <stdlib.h>
#include "arm_protocol_header.h"
#include <fstream>
#include "base64.h"
#include <pistache/endpoint.h>
#include <pistache/description.h>
#include <pistache/router.h>
#include "picojson.h"

#define HASH_BLOCK_SIZE 0x80
#define PROGRAMMING_DATA_OFFSET 0x100

using namespace Pistache;

bool dev_mode = false;

namespace Generic {

void handleReady(const Rest::Request&, Http::ResponseWriter response) {
  response.send(Http::Code::Ok, "1");
}

}


class RemoteAttestationService {
  // See:https://github.com/oktal/pistache/blob/master/examples/rest_description.cc
public:
  RemoteAttestationService(Address addr)
    : httpEndpoint(std::make_shared<Http::Endpoint>(addr))
    , desc("Remote Attestation API", "0.1")
  {
  }

  void init(size_t thr = 2) {
    auto opts = Http::Endpoint::options()
      .threads(thr)
      .flags(Tcp::Options::InstallSignalHandler);
    httpEndpoint->init(opts);
    createDescription();
  }

  void start() {
    router.initFromDescription(desc);

    // Rest::Swagger swagger(desc);
    // swagger
    // .uiPath("/doc")
    // .uiDirectory("/home/octal/code/web/swagger-ui-2.1.4/dist")
    // .apiPath("/banker-api.json")
    // .serializer(&Rest::Serializer::rapidJson)
    // .install(router);

    httpEndpoint->setHandler(router.handler());
    httpEndpoint->serve();
  }

  void shutdown() {
    httpEndpoint->shutdown();
  }

private:
  void createDescription() {
    desc
    .info()
    .license("Apache", "http://www.apache.org/licenses/LICENSE-2.0");

    auto backendErrorResponse =
      desc.response(Http::Code::Internal_Server_Error, "An error occured with the backend");

    desc
    .schemes(Rest::Scheme::Http)
    .basePath("/v1")
    .produces(MIME(Application, Json))
    .consumes(MIME(Application, Json));

    desc
    .route(desc.get("/ready"))
    .bind(&Generic::handleReady)
    .response(Http::Code::Ok, "Response to the /ready call")
    .hide();

    auto versionPath = desc.path("/v1");

    versionPath
    .route(desc.post("/start_attestation"), "Start Attestation")
    .bind(&RemoteAttestationService::beginAttestation, this)
    .produces(MIME(Application, Json))
    .consumes(MIME(Application, Json))
    .response(Http::Code::Ok, "Begin attestation and return result");

    versionPath
    .route(desc.get("/get_message"), "Retrieve an account")
    .bind(&RemoteAttestationService::getMessage, this)
    .produces(MIME(Application, Json))
    .response(Http::Code::Ok, "The requested account")
    .response(backendErrorResponse);
  }

  void beginAttestation(const Rest::Request& request, Http::ResponseWriter response){
    unsigned char message_out[0x140];
    std::string body = request.body();
    picojson::value body_json;
    std::string err = picojson::parse(body_json, body);
    if(!err.empty()) {
      response.send(Http::Code::Bad_Request, "{\"error\":\"JSON parsing error\"}");
      return;
    }
    if(!body_json.is<picojson::object>()) {
      response.send(Http::Code::Bad_Request, "{\"error\":\"Malformed JSON\"}");
      return;
    }
    std::string remote_attestation_data;
    if(body_json.contains("attestion_data") && body_json.get("attestation_data").is<std::string>()) {
      remote_attestation_data = base64_decode(body_json.get("attestation_data").get<std::string>());
    } else{
      response.send(Http::Code::Bad_Request, "{\"error\":\"Malformed JSON\"}");
      return;
    }
    start_attestation((unsigned char*)(remote_attestation_data.data()), message_out);
    std::stringstream json_builder;
    json_builder << "{\"attestation_data\":\"";
    json_builder << base64_encode(message_out, 0x140);
    json_builder << "\"}" << std::endl;
    response.send(Http::Code::Ok, json_builder.str());
    return;
  }

  void getMessage(const Rest::Request& request, Http::ResponseWriter response){
    unsigned char message_buffer[0x100];
    unsigned int message_length;
    generate_encrypted_message(message_buffer, &message_length);
    std::stringstream json_builder;
    json_builder << "{\"message_data\":\"";
    json_builder << base64_encode(message_buffer, message_length);
    json_builder << "\"}" << std::endl;
    response.send(Http::Code::Ok, json_builder.str());
    return;
  }

  std::shared_ptr<Http::Endpoint> httpEndpoint;
  Rest::Description desc;
  Rest::Router router;
};

// int main(int argc, char **argv) {
void * attestation_server_serve(void * args){
  Port port(8080);
  Address addr(Ipv4::any(), port);
  RemoteAttestationService attestation_service(addr);
  attestation_service.init(1);
  attestation_service.start();
  return 0;
}

void initialize_remote_attestion_server(){
  int attestation_create = pthread_create(&remote_attestation_thread, NULL, attestation_server_serve, NULL);
  if(attestation_create) {
    fprintf(stderr, "Error launching remote attestation server\n");
    exit(-1);
  }
}

void * watch_ocall_buffer(void * args){
  pthread_exit(NULL);
}

void initialize_ocall_listener(){
  // TODO: watch_ocall_buffer() should be autogenerated similar to the
  // microblaze code
  int listener_create = pthread_create(&ocall_listener_thread, NULL, watch_ocall_buffer, NULL);
  if(listener_create) {
    fprintf(stderr, "Error launching ocall listener thread\n");
    exit(-1);
  }
}

int enclave_init(){
  return enclave_init_with_file(DEFAULT_MICROBLAZE_BINARY);
}

int enclave_init_dev(){
  dev_mode = true;
  initialize_remote_attestion_server();
  return 0;
}

int enclave_init_with_file(char const *filename){
  char current_char;
  int buffer_index = 0, i, iteration=0;
  unsigned int count = 0;
  volatile unsigned char *control, *data, *block_start;
  volatile unsigned int *count_out;
  dev_mode = false;
  // 1. Program memory
  shared_memory reset_controller = getSharedMemoryArea(RESET_CONTROLLER_ADDRESS, 0x1000);
  ((unsigned char*)reset_controller->ptr)[0] = 1;
  shared_memory program_buffer = getSharedMemoryArea(PROGRAM_BUFFER_ADDRESS, PROGRAM_BUFFER_SIZE);
  control = (volatile unsigned char*)(program_buffer->ptr);
  data = (volatile unsigned char*)(control + 0x100);
  count_out = (volatile unsigned int*)(control + 0x4);
  //reset things to get everything in the correct state
  //clear control signals
  control[0x8] = 0;
  control[0xC] = 0;
  control[0x10] = 0;
  control[0x14] = 0;
  //start ecdsa function
  control[0] = 0xFF;
  std::ifstream is(filename);
  cleanupSharedMemoryPointer(program_buffer);
  while(is.get(current_char)) {
    getSharedMemoryArea(PROGRAM_BUFFER_ADDRESS, PROGRAM_BUFFER_SIZE);
    control = (volatile unsigned char*)(program_buffer->ptr);
    data = (volatile unsigned char*)(control + 0x100);
    count_out = (volatile unsigned int*)(control + 0x4);
    block_start = (volatile unsigned char*)(control + 0x8);
    //clear the buffer
    if(buffer_index == 0) {
//      printf("Clearing buffer\n");
//      control[0x8] = 0;
//      control[0xC] = 0;
      for(i=0; i<HASH_BLOCK_SIZE; i++) {
        data[i] = 0;
      }
      count=0;
    }
    //TODO: handle 4 byte vs. 1 byte writes
    //copy data to buffer for current block
    data[buffer_index] = (unsigned char)current_char;
    buffer_index++;
    count++;
    //if block finished, set signal, wait for hashing to complete
    if(buffer_index >= HASH_BLOCK_SIZE) {
//      printf("Waiting for hash\n");
      *count_out = count;
//      control[0x8] = 0xFF;
      *block_start = 0xFF;
//      printf("Buffer index: %i\n", buffer_index);
      while(control[0xC] == 0) {
        __asm__ ("");
        asm ("");
      }
//      printf("Iteration %i\n", iteration);
      iteration++;
//      printf("Hash finished\n");
      buffer_index=0;
    }
    cleanupSharedMemoryPointer(program_buffer);
  }
  getSharedMemoryArea(PROGRAM_BUFFER_ADDRESS, PROGRAM_BUFFER_SIZE);
  control = (volatile unsigned char*)(program_buffer->ptr);
  data = (volatile unsigned char*)(control + 0x100);
  count_out = (volatile unsigned int*)(control + 0x4);
  block_start = (volatile unsigned char*)(control + 0x8);
  //say that was the last block
  *count_out = count;
  control[0x10] = 0xFF;
//  control[0x8] = 0xFF;
  *block_start = 0xFF;
  fprintf(stderr, "Waiting for program hash and load to finish\n");
  while(control[0x14] == 0) {
    asm ("");
    __asm__ ("");
  }
  fprintf(stderr, "Program hash and load finished\n");
  // fclose(program_file);
  is.close();
  cleanupSharedMemoryPointer(program_buffer);
  // 2. Reset microblaze
  ((unsigned char*)reset_controller->ptr)[0] = 1;
  cleanupSharedMemoryPointer(reset_controller);
  // 3. Launch attestation thread that listens for thrift connections and
  // talks thift back
  initialize_remote_attestion_server();
  // 4. Launch ocall listening thread
  // TODO: requires the watch_ocall_buffer() to be autogenerated
  // initialize_ocall_listener();
  return 0;
}
