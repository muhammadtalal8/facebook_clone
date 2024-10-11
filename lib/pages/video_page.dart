import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Row(children: [
          Text(
            'Videos',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ]))
      ],
    );
  }
}
