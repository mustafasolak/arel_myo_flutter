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
          child: Container(
            width: 300, // genişlik
            height: 300, // yükseklik
            padding: EdgeInsets.symmetric(
              horizontal: 20, // yatayda sol ve sağdan 20 birim iç boşluk verir
            ),
            // Container içindeki nesnenin hizalanması için
            alignment: Alignment.center,
            // kutu biçimlendirmesi için
            decoration: BoxDecoration(
              color: Color(0xff575e75),
              // Container'ın tüm kenarlarını yuvarlamak için
              //borderRadius: BorderRadius.circular(20),
              // sadece istediğimiz kenarları yuvarlamak için
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              //dikeyde çok çocuklu widget
              mainAxisSize: MainAxisSize.min,
              children: [
                // children çok çocuklu olduğunu belirtir

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Simge(ikon) eklemek için kullanılır
                    Icon(
                      Icons.login,
                      color: Colors.white38,
                      size: 25,
                    ),
                    // yatayda 10 birim boşluk verir
                    SizedBox(width: 10),
                    // metin eklemek için
                    Text(
                      "LOGIN FORM", // metin widgetı
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "e-posta giriniz...",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "parola giriniz...",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Pressed! Login button");
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
