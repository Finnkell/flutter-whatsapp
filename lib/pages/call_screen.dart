import 'package:flutter/material.dart';
import 'package:whatsapp/config/config.dart';
import 'package:whatsapp/models/calls_model.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, i) => ListTile(
        title: Text(data[i].name),
        subtitle: Text(data[i].message),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            data[i].call ? Icons.call : Icons.videocam,
            color: primaryColor,
          ),
        ),
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
