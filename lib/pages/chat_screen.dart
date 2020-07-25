import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, i) => ListTile(
        title: Text(data[i].name),
        subtitle: Text(data[i].message),
        trailing: Text(data[i].time),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(data[i].avatarUrl),
        ),
        onTap: () {},
      ),
      separatorBuilder: (ctx, i) => Divider(),
      itemCount: data.length,
    );
  }
}
