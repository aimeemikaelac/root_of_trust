namespace cpp communication_to_program
namespace py communication_to_program

service CommunicationToProgram{
  binary begin_attestation(1:binary remote_message),
  bool check_message_ready(),
  binary get_message(),
  void signal_message_received(),
  bool transfer_message(1:binary remote_message),
}
