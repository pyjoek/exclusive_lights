import 'package:flutter/material.dart';
import 'package:lips/hone.dart';
import 'package:lips/profile.dart';
import 'package:lips/search.dart';
import 'package:lips/setting.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Home(),
    );
  }
}

class _Home extends StatefulWidget {
  @override 
  State<_Home> createState() => HoMe();
}

class HoMe extends State<_Home> {
  final mainColor = const Color.fromARGB(255, 65, 64, 64);
  final white = Colors.white;
  Color iconColor = const Color.fromARGB(255, 255, 255, 255);
  int myindex = 0;

  final List<Widget> _pages = [
    Hone(),
    Setting(),
    Search(),
    Profile(),
  ];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: _pages[myindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
      elevation: 0,
      showUnselectedLabels: false,
      onTap: (index) {
        setState(() {
          myindex = index; });
      },
      currentIndex: myindex,
      items: [
        BottomNavigationBarItem(backgroundColor: mainColor, icon: Icon(Icons.home, color: iconColor,), label: "Home"),
        BottomNavigationBarItem(backgroundColor: mainColor, icon: Icon(Icons.settings, color: iconColor), label: "Setting"),
        BottomNavigationBarItem(backgroundColor: mainColor, icon: Icon(Icons.search, color: iconColor), label: "search"),
        BottomNavigationBarItem(backgroundColor: mainColor, icon: Icon(Icons.account_box_rounded, color: iconColor), label: "profile"),
      ]
      )
    );
  }
}
