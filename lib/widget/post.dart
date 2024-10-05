import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
                iconSize: 50,
                onPressed: () => {},
                icon: const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/man7.jpeg'),
                )),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Khan',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Wrap(
                  children: [
                    Text(
                      '12 min ago',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Icon(Icons.public),
                  ],
                )
              ],
            ),
            IconButton(
              iconSize: 30,
              onPressed: () => {},
              icon: Icon(Icons.more_horiz_outlined),
            )
          ],
        )
      ],
    );
  }
}
