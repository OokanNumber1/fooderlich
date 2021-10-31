import 'package:flutter/material.dart';
import 'package:navbartask/profile.dart';
import 'package:navbartask/top_foodie.dart';
import 'homme.dart';
import 'discovery.dart';
import 'bookmark.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    Homme(),
    Discovery(),
    Bookmark(),
    TapFoodie(),
    Profile(),
  ];

  void _switch(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     ,
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   centerTitle: true,
      // ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _switch,
        iconSize: 30,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin), label: 'Discovery'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Bookmaark'),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank), label: 'Tap Foodie'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        selectedItemColor: Colors.yellow,
      ),
    );
  }
}
