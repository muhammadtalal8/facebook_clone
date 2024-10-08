// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
            onPressed: () => print("Add Post Clicked"),
            child: Row(
              children: [
                const Icon(Icons.post_add_outlined),
                Text(
                  "Text",
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                )
              ],
            )),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
            onPressed: () => print("Video live Clicked"),
            child: Row(
              children: [
                const Icon(
                  Icons.video_call,
                  color: Colors.redAccent,
                ),
                Text(
                  "live video",
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                )
              ],
            )),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
            onPressed: () => print("Location Clicked"),
            child: Row(children: [
              const Icon(Icons.location_on, color: Colors.red),
              Text(
                "Location",
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
            ]))
      ],
    );
  }
}
