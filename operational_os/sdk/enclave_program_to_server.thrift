namespace cpp communication_to_server
namespace py communication_to_server

service CommunicationToServer{
  bool send_message(1:binary local_message),
}
