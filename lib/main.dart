import 'package:flutter/material.dart';
import 'beranda.dart';
import 'dart:async';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();  
}

class _MyAppState extends State<MyApp> {
  @override
    void initState() {
      super.initState();
      Future.delayed(
        Duration(seconds: 3),() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Beranda(),
           ),
          );
        });
    }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: Image (
          image: AssetImage ('logo seroja dengan nama.png'),
        ),
      ),
    );
  }
}