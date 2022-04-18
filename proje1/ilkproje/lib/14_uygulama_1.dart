import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF6EAEA),
        appBar: AppBar(
          title: Text("Checkout"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivery Address"),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Icon(Icons.access_alarm),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("20845 Oakfridge Farm Lane"),
                          SizedBox(
                            height: 15,
                          ),
                          Text("New York (NYC)"),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
