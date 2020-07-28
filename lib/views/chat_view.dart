import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_message.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatView extends StatelessWidget {
  final ChatModel person;

  ChatView({this.person});

  Widget renderChatMessage(ChatMessage message) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFDCF8C6),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x44000000),
            offset: Offset(2,2),
          )
        ],
      ),
      child: Text(message.message),
      alignment: message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE5DD),
      appBar: AppBar(
        title: Text(person.name),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (ctx, i) => renderChatMessage(messages[i]),
      ),
    );
  }
}
