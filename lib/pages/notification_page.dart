// ignore_for_file: avoid_print

import 'package:facbook_clone/models/notification_model.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                  "Notification",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: IconButton(
                        icon: const Icon(Icons.check_circle),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        tooltip: 'mark all notification as read',
                        onPressed: () {
                          print('Create New Message Clicked');
                        }),
                  )
                ]),
              ],
            )),
        const Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: notificationData.length,
          itemBuilder: (context, i) => Column(children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage(notificationData[i].avator),
              ),
              title: Text(
                // ignore: prefer_interpolation_to_compose_strings
                notificationData[i].name +
                    ' ' +
                    notificationData[i].description,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                iconSize: 20,
                color: Colors.green,
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
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
