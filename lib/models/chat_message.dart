class ChatMessage {
  final String message;
  final bool isSentByMe;
  final String date;

  ChatMessage({this.message, this.isSentByMe, this.date});
}

List<ChatMessage> messages = [
  new ChatMessage(
    message: "Bao",
    isSentByMe: false,
    date: "15: 30" 
  ),
  new ChatMessage(
    message: "Bao",
    isSentByMe: true,
    date: "15: 30" 
  ),
  new ChatMessage(
    message: "Bao",
    isSentByMe: false,
    date: "15: 30" 
  ),
  new ChatMessage(
    message: "Bao",
    isSentByMe: true,
    date: "15: 30" 
  ),
  new ChatMessage(
    message: "Bao",
    isSentByMe: false,
    date: "15: 30" 
  ),
  new ChatMessage(
    message: "Bao",
    isSentByMe: true,
    date: "15: 30" 
  ),
];
