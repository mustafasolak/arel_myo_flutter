import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spacer Widget"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 60,
              height: 120,
              color: Colors.red,
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              width: 60,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    ),
  );
}
