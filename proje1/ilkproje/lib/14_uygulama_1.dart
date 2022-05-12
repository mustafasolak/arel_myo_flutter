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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF6EAEA),
        /*appBar: AppBar(
          title: Text("Checkout"),
          centerTitle: true,
        ),*/
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back),
                      Text(
                        "Checkout",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                      Text(
                        "My Cart",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/kedi.jpg",
                              width: 80,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Beach"),
                              Text("Crochet Lace"),
                              Text("Size : XL"),
                              Row(
                                children: [
                                  Icon(Icons.euro, color: Colors.orange),
                                  Text("39.99"),
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/kedi.jpg",
                              width: 80,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Beach"),
                              Text("Crochet Lace"),
                              Text("Size : XL"),
                              Row(
                                children: [
                                  Icon(Icons.euro, color: Colors.orange),
                                  Text("39.99"),
                                ],
                              )
                            ],
                          )
                        ],
                      )),
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
