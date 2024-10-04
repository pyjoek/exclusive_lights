import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override 
  State<Search> createState() => _Search();
}

class _Search extends State<Search> {
  late double height, width;
  final mainColor = const Color.fromARGB(255, 65, 64, 64);
  // late TextEditingController _controller = TextEditingController(text: "");
  List<String> names = [
    'joel','jackson','john','joshua'
  ];

  @override 
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Text("Search here"),
          centerTitle: true,
          backgroundColor: mainColor,
      ),
      ),
    );
  }
}