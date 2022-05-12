import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(SoruEklemeEkrani());

class SoruEklemeEkrani extends StatefulWidget {
  @override
  State<SoruEklemeEkrani> createState() => _SoruEklemeEkraniState();
}

class _SoruEklemeEkraniState extends State<SoruEklemeEkrani> {
  TextEditingController controllerSoruIcerik = TextEditingController();
  TextEditingController controllerSoruCevap = TextEditingController();
  var db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soru Ekleme Ekranı'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            TextField(
              controller: controllerSoruIcerik,
              decoration: InputDecoration(
                  hintText: "Soru içeriğini yazınız...",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controllerSoruCevap,
              decoration: InputDecoration(
                  hintText: "soru cevabını true veya false olarak giriniz...",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                String soru_icerik = controllerSoruIcerik.text;
                String str_soru_cevap = controllerSoruCevap.text;
                bool soru_cevap =
                    str_soru_cevap.toLowerCase() == "true" ? true : false;

                var soru = {"soruicerik": soru_icerik, "sorucevap": soru_cevap};

                await db.collection("sorular").doc().set(soru);
                print("veri eklendi");
                controllerSoruCevap.clear();
                controllerSoruIcerik.clear();
              },
              child: Text(
                "Soruyu Ekle",
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                var sorular = await db.collection("sorular").get().then(
                  (res) {
                    res.docs.forEach((doc) {
                      // print(doc.data());
                      var veri = doc.data();
                      print(veri["soruicerik"]);
                      print(veri["sorucevap"]);
                    });
                    print("veriler alındı");
                  },
                  onError: (e) =>
                      print("Veriler alınırken hata meydana geldi: $e"),
                );
              },
              child: Text("Soruları Getir"),
            ),
          ]),
        ),
      ),
    );
  }
}
