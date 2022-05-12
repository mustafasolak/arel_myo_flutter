import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Align Widget"),
        ),
        body: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
      ),
    ),
  );
}
