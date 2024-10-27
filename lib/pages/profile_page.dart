// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                onPressed: () => {Navigator.of(context).pop()},
                icon: const Icon(Icons.arrow_back_outlined),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              const Text("Talal Khanjee")
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 255,
              width: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 400,
                          margin: const EdgeInsets.only(top: 10.0),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image: AssetImage(
                                "images/download (1).jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 140,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image(
                              image: AssetImage("images/download (1).jpeg")),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "TalalKhanjee",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () => {},
                      child: const Row(
                        children: [
                          Icon(Icons.add_circle),
                          Text("Add to Story")
                        ],
                      )),
                  ElevatedButton(
                    onPressed: () => {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400]),
                  ),
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.more_horiz))
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: const Row(
                    children: [
                      Icon(Icons.book),
                      Text(
                        "Studied at Youtube",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: const Row(
                    children: [
                      Icon(Icons.gamepad),
                      Text(
                        "Single",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: const Row(
                    children: [
                      Icon(Icons.info),
                      Text(
                        "About",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Friends"),
                  TextButton(
                      onPressed: () => {}, child: const Text("Find Friend")),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black38,
            )
          ],
        ),
      ),
    );
  }
}
