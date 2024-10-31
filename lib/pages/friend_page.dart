// ignore_for_file: avoid_print, prefer__ructors_in_immutables

import 'package:facbook_clone/models/friends_model.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
   FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:   EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(
                "Friend",
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
                      icon:   Icon(Icons.person),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.green,
                      onPressed: () {
                        print('Person CLicked');
                      },
                    ),
                  ),
                  Container(
                    margin:   EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: IconButton(
                      icon:   Icon(Icons.people),
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
          Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: friendsData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            backgroundImage: AssetImage(friendsData[i].avator),
                          ),
                          title: Text(
                            friendsData[i].name,
                            style:   TextStyle(fontSize: 20),
                          ),
                          trailing: Wrap(
                            spacing: 20,
                            children: [
                              TextButton(
                                onPressed: () =>
                                    {print('Friend Add Request Sent')},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.blue,
                                    padding:   EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    textStyle:   TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                child:   Text('add friend'),
                              ),
                              TextButton(
                                  onPressed: () => {print('Friend Removed  ')},
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      backgroundColor: Colors.grey[400],
                                      padding:   EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      textStyle:   TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  child:   Text('Remove'))
                            ],
                          ),
                          onTap: () {
                            print('Open Clicked User Profile');
                          },
                        )
                      ],
                    )))
      ],
    );
  }
}
