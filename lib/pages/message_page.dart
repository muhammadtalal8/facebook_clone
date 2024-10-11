import 'package:facbook_clone/models/message_model.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Message",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: IconButton(
                      icon: const Icon(Icons.message),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.green,
                      onPressed: () {
                        print('Person CLicked');
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: IconButton(
                      icon: const Icon(Icons.settings),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.redAccent,
                      onPressed: () {
                        print('Person CLicked');
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (context, i) => Column(children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage(messageData[i].avator),
              ),
              title: Text(
                messageData[i].name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                iconSize: 20,
                color: Colors.green,
                onPressed: () {},
                icon: messageData[i].status,
              ),
              onTap: () {
                print("User Tapped from message");
              },
            ),
          ]),
        ))
      ],
    );
  }
}
