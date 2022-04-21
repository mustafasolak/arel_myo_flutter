import 'package:flutter/material.dart';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  int sayi1 = 0;
  int sayi2 = 0;
  int sonuc = 0;
  TextEditingController controllerSayi1 = TextEditingController();
  TextEditingController controllerSayi2 = TextEditingController();

  void sayilariAl() {
    print(controllerSayi1.text.toString());
    print(controllerSayi2.text.toString());
    if (controllerSayi1.text.length != 0 && controllerSayi2.text.length != 0) {
      sayi1 = int.parse(controllerSayi1.text);
      sayi2 = int.parse(controllerSayi2.text);
    }
  }

  void topla() {
    sayilariAl();
    sonuc = sayi1 + sayi2;
    print(sonuc);
    setState(() {});
  }

  void cikar() {
    sayilariAl();
    sonuc = sayi1 - sayi2;
    print(sonuc);
    setState(() {});
  }

  void carp() {
    sayilariAl();
    sonuc = sayi1 * sayi2;
    print(sonuc);
    setState(() {});
  }

  void bol() {
    sayilariAl();
    sonuc = sayi1 ~/ sayi2;
    print(sonuc);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hesap Makinesi"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: controllerSayi1,
                    decoration: InputDecoration(
                      hintText: "1.sayıyı giriniz...",
                    ),
                  ),
                  TextField(
                    controller: controllerSayi2,
                    decoration: InputDecoration(
                      hintText: "2.sayıyı giriniz...",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Sonuç : $sonuc"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          topla();
                        },
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          cikar();
                        },
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          carp();
                        },
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          bol();
                        },
                        child: Text(
                          "/",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
