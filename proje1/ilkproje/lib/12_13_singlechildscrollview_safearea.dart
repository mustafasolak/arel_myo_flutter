import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text("Single Child Scroll View"),
        ),*/
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.infinity, height: 90, color: Colors.red),
                Container(
                    width: double.infinity, height: 90, color: Colors.green),
                Container(
                    width: double.infinity, height: 90, color: Colors.blue),
                Container(
                    width: double.infinity, height: 90, color: Colors.yellow),
                Container(
                    width: double.infinity, height: 90, color: Colors.pink),
                Container(
                    width: double.infinity, height: 90, color: Colors.purple),
                Container(
                    width: double.infinity, height: 90, color: Colors.blue),
                Container(
                    width: double.infinity, height: 90, color: Colors.black),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
