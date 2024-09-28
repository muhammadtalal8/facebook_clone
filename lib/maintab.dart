// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Maintab extends StatefulWidget {
  const Maintab({super.key});

  @override
  State<Maintab> createState() => _MaintabState();
}

class _MaintabState extends State<Maintab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> toptap = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outline)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(icon: Icon(Icons.notification_add_outlined)),
    Tab(icon: Icon(Icons.video_library_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];
  @override
  void initState() {
    _tabController =
        TabController(length: toptap.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Facebook',
          style: TextStyle(fontSize: 34, color: Colors.blue[700]),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('search button clicked');
              },
              icon: const Icon(Icons.search),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('menu button clicked');
              },
              icon: const Icon(Icons.menu),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          tabs: toptap,
        ),
      ),
    );
  }
}
