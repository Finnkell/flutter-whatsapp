import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/controller/story_controller.dart';

class StoryViewScreen extends StatelessWidget {
  final controller = StoryController();

  List<StoryItem> stories = [
    StoryItem.text(
        title: "Hello there, this is going to be awesome, done awesome photo",
        backgroundColor: Colors.purple),
    StoryItem.pageImage(
      url:
          "https://images.pexels.com/photos/3779853/pexels-photo-3779853.png?auto=compress&cs=tinysrgb&dpr=1&w=500",
      controller: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: stories,
        controller: controller,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class NetWorkImage {}
