import 'package:flutter/material.dart';
import 'package:lips/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    );
  }
}

class Myapp extends StatefulWidget {
  @override 
  State<Myapp> createState() => myapp();
}

class myapp extends State<Myapp> {
  final mainColor = const Color.fromARGB(255, 65, 64, 64);
  final white = Colors.white;
  late double height, width;

  @override 
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 7),
              child: Container(
                height: height * .6,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: width * .9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 244, 130, 54),
                              Color.fromARGB(255, 66, 66, 66)
                            ],
                            begin: Alignment.topLeft,
                          )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: width * .9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 244, 130, 54),
                              Color.fromARGB(255, 66, 66, 66)
                            ],
                            begin: Alignment.topLeft,
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * .07,),
            Text("Welcome to Grocery Shop", 
            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),), 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Embark on a ordinary journey with fresh ingredients brought right to your kitchen",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.white, ),
                    ),
            ),
            SizedBox(height: height * .1,),
            InkWell(
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Container(
              height:50,
              width: width * .8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: white
              ),
              child: const Center(child: Text("Continue",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, color: Color.fromARGB(255, 66, 66, 66)),
              )),
            )
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}