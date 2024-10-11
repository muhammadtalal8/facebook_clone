// ignore_for_file: avoid_print, avoid_unnecessary_containers

import 'package:facbook_clone/models/video_model.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Videos',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Tooltip(
                      message: 'Plat Video automatically',
                      child: Switch(
                          activeColor: Colors.green,
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          }),
                    ),
                  ),
                ])),
        const Divider(
          thickness: 1,
          color: Colors.black26,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: videoData.length,
          itemBuilder: (context, i) => Column(children: [
            Row(children: [
              IconButton(
                iconSize: 50,
                onPressed: videoData[i].avatarOnpressed,
                icon: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage(videoData[i].avatarImage),
                ),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        videoData[i].name,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () => {},
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent),
                          ))
                    ],
                  ),
                  Wrap(
                    spacing: 10.0,
                    children: [
                      Text(
                        videoData[i].time,
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Icon(Icons.public)
                    ],
                  )
                ],
              )),
              IconButton(
                  onPressed: videoData[i].moreOnPressed,
                  icon: Icon(Icons.more_horiz_outlined))
            ]),
          ]),
        ))
      ],
    );
  }
}
