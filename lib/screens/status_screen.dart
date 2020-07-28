import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';
import 'package:whatsapp/views/storys_view.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, i) => ListTile(
        title: Text(data[i].name),
        subtitle: Text(data[i].time),
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(data[i].avatarUrl),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StoryViewScreen(),
            ),
          );
        },
      ),
      separatorBuilder: (ctx, i) => Divider(),
      itemCount: data.length,
    );
  }
}
