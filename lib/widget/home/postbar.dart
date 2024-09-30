import 'package:flutter/material.dart';

class Postbar extends StatelessWidget {
  const Postbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            iconSize: 50,
            onPressed: () => print('User Avator Clicked'),
            icon: const CircleAvatar(
              backgroundImage: AssetImage("images/download (1).jpeg"),
            )),
        TextButton(
            onPressed: () => {},
            child: Text(
              "whats on your mind?",
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            )),
        Container(
          height: 60,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        Column(
          children: [
            IconButton(
                onPressed: () => print("photo clicked"),
                icon: Icon(Icons.photo_album_outlined)),
            Text("Photo")
          ],
        )
      ],
    );
  }
}
