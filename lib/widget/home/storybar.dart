import 'package:facbook_clone/models/storymodel.dart';
import 'package:flutter/material.dart';

class Storybar extends StatelessWidget {
  const Storybar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 10.0,
            children: [
              Container(
                  height: 255,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(fit: StackFit.expand, children: [
                    GestureDetector(
                      onTap: () => print("add story clicked"),
                      child: Column(
                        children: [
                          Container(
                              height: 170,
                              width: 150,
                              margin: const EdgeInsets.only(bottom: 30.0),
                              child: const ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image(
                                  image: AssetImage('images/download (1).jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          TextButton(
                              onPressed: () => {},
                              child: const Text(
                                "Add to Story",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 55.0,
                        left: 45.0,
                        child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.add_circle_rounded),
                          iconSize: 45.0,
                          color: Colors.blueAccent,
                        )),
                  ])),
              //for loop will be here
              for (var i = 0; i < storyData.length; i) ...[
                Container(
                  height: 250,
                  width: 150,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: storyData[i].onTap,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(storyData[i].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 15.0,
                          left: 10.0,
                          child: Text(
                            storyData[i].username,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
              ]
            ],
          ),
        ));
  }
}
