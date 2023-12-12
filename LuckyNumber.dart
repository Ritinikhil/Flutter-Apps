import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "First Flutter App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is My App"),
        ),
        body: Material(
          color: Colors.deepPurpleAccent,
          child: Center(
            child: Text(
              "Your Lucky Number :${generate()}",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.brown, fontSize: 40.0),
            ),
          ),
        ),
      ),
    ),
  );
}
  int generate()
  {
    var random = Random();
    int num=random.nextInt(20);
    return num;
  }

