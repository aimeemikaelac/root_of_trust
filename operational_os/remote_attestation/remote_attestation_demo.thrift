namespace cpp remote_attestation_demo
namespace py remote_attestation_demo

service RemoteAttestationDemo{
  binary begin_attestation(1:binary remote_message),
  bool check_message(),
  binary get_message()
}
