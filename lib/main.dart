import 'dart:developer';


import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigationbar_byktech/screens/add.dart';
import 'package:curved_navigationbar_byktech/screens/home.dart';
import 'package:curved_navigationbar_byktech/screens/profile.dart';
import 'package:curved_navigationbar_byktech/screens/search.dart';
import 'package:curved_navigationbar_byktech/screens/settings.dart';

import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
   //   theme: ThemeData(fontFamily: ),
      home:BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
 
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  final screens = [
  Home(),
  Search(),
  Add(),
  Profile(),
  Setting(),
  ];

 

  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
    Icon(Icons.add, size: 30),
    Icon(Icons.person, size: 30),
      Icon(Icons.settings, size: 30),
    ];

    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(
              color: Colors.lightGreen,
            ),
          ),
          child: CurvedNavigationBar(
            key: navigationKey,
            backgroundColor: Colors.black38,
            height: 60,
            index: index,
            items: items,
            onTap: (index) => setState(() => this.index = index),
          )),
      body: screens[index],
      
    );
  }
}
