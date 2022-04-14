import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("Kullanıcı Giriş Ekranı"),
        ),
        body: Center(
          child: Container(
            width: 350,
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Giriş Formu",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blueAccent,
                  ),
                ),
                Padding(
                  //padding: EdgeInsets.all(30),
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "eposta giriniz..",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "parola giriniz",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Giriş"),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}










/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("İlk Proje"),
        ),
        body: Text("Selamlarrr"),
      ),
    ),
  );
}*/
