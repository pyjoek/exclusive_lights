import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final mainColor = const Color.fromARGB(255, 65, 64, 64);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: mainColor,
        appBar: AppBar(
          title: Text("This is Profile"),
          centerTitle: true,
          backgroundColor: mainColor,
        ),
      ),
    );
  }
}