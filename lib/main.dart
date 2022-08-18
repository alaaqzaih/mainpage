import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';
import 'package:flutter_webpage/Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xffE63220), Color.fromARGB(255, 255, 230, 119)]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                child: LandingPage(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: Image.asset(
                  "images/3.png",
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 480.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_florist_outlined,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      Text("    صنع بحب بأيدي وطنية",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Colors.white)),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: Image.asset(
                  "images/4.png",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
