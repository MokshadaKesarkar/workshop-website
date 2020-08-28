import 'package:app/Contact/contact.dart';
import 'package:app/Home/home.dart';
import 'package:app/Navbar/navbar.dart';
import 'package:flutter/material.dart';

import 'About/about.dart';
import 'About/about1.dart';
import 'Home/speakers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WORKSHOP',
      home: MyHomePage(),
      theme: ThemeData(
        fontFamily: 'Shanti'
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyApp(),
        '/contact': (BuildContext context) => new ContactPage(),
        '/about': (BuildContext context) => new AboutPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:ListView(
        children: [
        Navbar(),
        Home(),
      LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return SizedBox(
              height: 40.0,
            );
          } else {
            return SizedBox(
              height: 20.0,
            );
          }
        },
      ),
        Speakers(),
          SizedBox(
            height: 20.0,
          )
        ], )

    );
  }
}
