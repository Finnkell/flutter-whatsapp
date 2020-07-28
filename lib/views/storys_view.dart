import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/controller/story_controller.dart';

class StoryViewScreen extends StatelessWidget {
  final controller = StoryController();

  final List<StoryItem> stories = [
    StoryItem.text(
      title: "Hello there, this is going to be awesome, done awesome photo",
      backgroundColor: Colors.purple
    ),
    StoryItem.pageImage(
      url:
        "https://images.pexels.com/photos/3779853/pexels-photo-3779853.png?auto=compress&cs=tinysrgb&dpr=1&w=500",
      controller: null,
    ),
    StoryItem.pageImage(
      caption: "Hello!!",
      url:
        "https://images.pexels.com/photos/3772510/pexels-photo-3772510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
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
