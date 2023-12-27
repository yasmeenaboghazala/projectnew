import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late VideoPlayerController controller;
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset("video/weeks.mp4");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('عرض الفيديو'),
          ),
          body: Center(
            child: controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  )
                : CircularProgressIndicator(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                if (controller.value.isPlaying) {
                  controller.pause();
                } else {
                  controller.play();
                }
              });
            },
            child: Icon(
              controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ));
  }
}
