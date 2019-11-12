import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SEROJA"),
        ),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            width: 150,
            height: 50,
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}