import 'dart:async';

import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/controller/story_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StoryView(
          controller: storyController,
          storyItems: [
            StoryItem.pageImage(
              url:
                  'https://th.bing.com/th/id/OIP.Blag-F1I9HmWBEf6jGLw5gHaFF?w=230&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7',
              controller: storyController,
            ),
            StoryItem.pageImage(
              url:
                  'https://th.bing.com/th/id/OIP.iQEDwIjzoCXOwkwL0ZicZAHaLM?w=115&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7',
              controller: storyController,
            ), 
          ],
        ),
      ),
    );
  }
}
