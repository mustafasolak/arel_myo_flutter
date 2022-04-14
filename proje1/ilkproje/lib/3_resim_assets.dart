import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff1ddbf),
        appBar: AppBar(
          // Uygulamanın en üstündeki başlık çubuğu
          title: Text("User Login Page"),
        ),
        body: Center(
          // içine aldığı widgeti ortalar
          child: Column(
            children: [
              Container(
                width: 400,
                height: 300,
                child: Image.asset("assets/images/kedi.jpg"),
                /* Image.network(
                "https://i.pinimg.com/474x/19/fe/ef/19feef7221b45ab72e4698a731b93a31--baby-cats-baby-animals.jpg"
                ),*/
              ),
              Container(
                width: 400,
                height: 300,
                child: Image.asset("assets/images/kedi2.jpg"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
