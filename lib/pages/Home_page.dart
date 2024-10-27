

import 'package:facbook_clone/widget/home/menubar.dart';
import 'package:facbook_clone/widget/home/postbar.dart';
import 'package:facbook_clone/widget/home/storybar.dart';
import 'package:facbook_clone/widget/post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView(
        children: const [
          Postbar(),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          Menubar(),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          Storybar(),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          Post(),
        ],
      ),
    );
  }
}
