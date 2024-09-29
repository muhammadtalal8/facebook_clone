import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'video',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
