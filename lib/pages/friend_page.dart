import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Friend",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Container(
                child: IconButton(
                  icon: const Icon(Icons.person),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.green,
                  onPressed: () {
                    print('Person CLicked');
                  },
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
              ),
              Container(
                child: IconButton(
                  icon: const Icon(Icons.people),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.redAccent,
                  onPressed: () {
                    print('Person CLicked');
                  },
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
