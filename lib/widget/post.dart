import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
              const Expanded(
                child: Column(
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
              ),
              IconButton(
                iconSize: 30,
                onPressed: () => {},
                icon: const Icon(Icons.more_horiz_outlined),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'This is title',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Image(image: AssetImage('images/man6.jpeg'))
              ],
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.thumb_up_alt_outlined),
                  ),
                  Text(
                    "12",
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
