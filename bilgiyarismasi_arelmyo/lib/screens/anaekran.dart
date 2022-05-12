import 'package:flutter/material.dart';
import 'package:ornekproje/screens/soru_ekle.dart';
import 'package:ornekproje/screens/yarisma_ekrani.dart';

class AnaEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Ana Ekran'),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YarismaEkrani(),
                      ),
                    );
                  },
                  child: Text(
                    "Yarışmaya Başla",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SoruEklemeEkrani(),
                      ),
                    );
                    /*
                    await FirebaseFirestore.instance
                        .collection("users")
                        .doc("veli")
                        .set({
                      "email": "aaaa@gmail.com",
                      "password": "122135.134.d",
                      "displayName": "Ali Paşa",
                    });
                    print("Veri eklendi");*/
                  },
                  child: Text(
                    "Soru Ekle",
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
