// ignore_for_file: sort_child_properties_last, avoid_print

import 'package:facbook_clone/pages/Home_page.dart';
import 'package:facbook_clone/pages/friend_page.dart';
import 'package:facbook_clone/pages/market_page.dart';
import 'package:facbook_clone/pages/message_page.dart';
import 'package:facbook_clone/pages/notification_page.dart';
import 'package:facbook_clone/pages/video_page.dart';
import 'package:facbook_clone/widget/home/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart' as badges;

class Maintab extends StatefulWidget {
  const Maintab({super.key});

  @override
  State<Maintab> createState() => _MaintabState();
}

class _MaintabState extends State<Maintab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> toptap = <Tab>[
    const Tab(icon: Icon(Icons.home_outlined)),
    const Tab(icon: Icon(Icons.people_outline)),
    const Tab(icon: Icon(Icons.message_outlined)),
    Tab(
        icon: badges.Badge(
            position: badges.BadgePosition.topEnd(top: -20, end: -5),
            badgeContent: const Text(
              "3",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            child: const Icon(Icons.notification_add_outlined))),
    const Tab(icon: Icon(Icons.video_library_outlined)),
    const Tab(icon: Icon(Icons.shopping_bag_outlined)),
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

  Future<bool> _onWillPop() async {
    print('On Will pop');
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(const Duration(microseconds: 200), () {
      print('Set Index');
      _tabController?.index = 0;
    });
    print("Return");
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
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
                  // ignore: duplicate_ignore
                  // ignore: avoid_print
                  print('search button clicked');
                },
                icon: const Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
            ),
            Container(
              child: IconButton(
                icon: const Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: toptap,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: const MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomePage(),
            FriendPage(),
            MessagePage(),
            NotificationPage(),
            VideoPage(),
            MarketPage()
          ],
        ),
      ),
    );
  }
}
