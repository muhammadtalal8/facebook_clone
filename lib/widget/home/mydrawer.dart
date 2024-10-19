// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

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
                  onTap: () => {},
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black12,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
