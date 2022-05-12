import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Ekran Yerleşimleri-Column"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                color: Colors.red,
              ),
              Container(
                width: 30,
                height: 30,
                color: Colors.green,
              ),
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),

              /*
              Icon(
                Icons.home,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.battery_alert,
                size: 50,
                color: Colors.amber,
              ),
              Icon(
                Icons.battery_saver,
                size: 50,
                color: Colors.green,
              ),
              Icon(
                Icons.shop,
                size: 50,
                color: Colors.purple,
              ),
              */
            ],
          ),
        ),
      ),
    ),
  );
}
