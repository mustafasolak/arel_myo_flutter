import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ekran Yerleşimleri-Row"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
            ],
          ),
        ),
      ),
    ),
  );
}
