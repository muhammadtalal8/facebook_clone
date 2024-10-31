// ignore_for_file: sort_child_properties_last, avoid_print, duplicate_ignore

import 'package:facbook_clone/models/video_model.dart';
import 'package:facbook_clone/pages/friend_page.dart';
import 'package:facbook_clone/pages/market_page.dart';
import 'package:facbook_clone/pages/message_page.dart';
import 'package:facbook_clone/pages/profile_page.dart';
import 'package:facbook_clone/pages/video_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 100,
            child: DrawerHeader(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  icon: const Icon(Icons.arrow_back_outlined),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  
                ),
                const Text(
                  "MENU",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print("Search Clicked");
                    },
                    icon: const Icon(Icons.search_outlined),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                ),
              ],
            )),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("images/download (1).jpeg"),
                  ),
                  title: const Text(
                    "TalalKhanjee",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("View Your Profile"),
                  onTap: () => {
                    
                    // ignore: avoid_unnecessary_containers
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const ProfilePage(),                                                            
                                ))
   

                  },
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                  title: const Text(
                    "Message",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    // ignore: avoid_unnecessary_containers
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Material(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: const MessagePage(),
                                  ),
                                )))
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.group,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    "Group",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    print('Group Tapped'),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.shopping_bag,
                    color: Colors.blueAccent,
                  ),
                  title: const Text(
                    "Marketplace",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    // ignore: avoid_unnecessary_containers
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Material(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: const MarketPage(),
                                  ),
                                )))
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.people,
                    color: Colors.green,
                  ),
                  title: const Text(
                    "Friends",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    // ignore: avoid_unnecessary_containers
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Material(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: FriendPage(),
                                  ),
                                )))
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.video_label,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    "Videos",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    // ignore: avoid_unnecessary_containers
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Material(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: const VideoPage(),
                                  ),
                                )))
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.pages,
                    color: Colors.red,
                  ),
                  title: const Text(
                    "Pages",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print("Page tapped")},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    "Settings",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print("Settings tapped")},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.privacy_tip,
                    color: Colors.blueGrey,
                  ),
                  title: const Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print("Privacy Policy tapped")},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.help,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    "Help Center",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print("Help Center tapped")},
                ),
                ListTile(
                    leading: const Icon(
                      Icons.book,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      "About",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () => {print("About tapped")}),
                ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    title: const Text(
                      "LogOut",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () => {print("LogOut tapped")})
              ],
            ),
          )
        ],
      ),
    );
  }
}
