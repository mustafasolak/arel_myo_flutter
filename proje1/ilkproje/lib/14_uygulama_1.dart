import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

enum Modeller { volkswagen, renault, honda, hyundai }

void main() {
  /*var gelenVeri = "şahin";
  if(gelenVeri == Modeller.honda){

  }

  if(gelenVeri == "honda"){

  }*/

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
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                          Text(
                            "20845 Oakfridge Farm Lane",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "New York (NYC)",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payment Method",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                    ),
                    title: Text("Apple Pay"),
                    subtitle: Text(
                      "©©©© ©©©© 0357 8420",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.credit_card,
                        color: Colors.red,
                      ),
                    ),
                    title: Text("Master Card"),
                    subtitle: Text(
                      "©©©© ©©©© 0357 8420",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.wallet_giftcard,
                        color: Colors.green,
                      ),
                    ),
                    title: Text("Apple Pay"),
                    subtitle: Text(
                      "©©©© ©©©© 0357 8420",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Cart"),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
