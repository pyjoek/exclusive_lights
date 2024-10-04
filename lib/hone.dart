import 'package:flutter/material.dart';

class Hone extends StatefulWidget {
  @override
  State<Hone> createState() => _HoneState();
}

class _HoneState extends State<Hone> {
  final mainColor = const Color.fromARGB(255, 65, 64, 64);
  late double height, width;
  List<String> titles = ['All', 'Buffet', 'Torchiere', 'Uniques', 'Sets'];
  late Color col;

  @override
  void initState() {
    super.initState();
    // Initialize color for the first title
    col = Color.fromARGB(255, 58, 58, 58);
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Exclusive Lights",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "for your house",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                  )
                ],
              ),
              SizedBox(height: 18,),  
              Row(
                children: titles.map((title) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        // Update the color when tapped
                        col = Color.fromARGB(255, 244, 130, 54);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: col,
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}