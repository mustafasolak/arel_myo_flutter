import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class YarismaEkrani extends StatefulWidget {
  @override
  State<YarismaEkrani> createState() => _BilgiYarisMasiAppState();
}

class _BilgiYarisMasiAppState extends State<YarismaEkrani> {
  List<String> sorular = [];

  List<bool> cevaplar = [];

  List<Icon> ikonlar = [];

  int soruNo = 0;
  int puan = 0;
  int puanArtisMiktari = 20;
  bool yarismaBittimi = false;
  int dogruSayisi = 0;
  int yanlisSayisi = 0;
  var db = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    print("uygulama initState fonksiyonuna geldi");
    // getQuestions();
  }

  getQuestions() async {
    var gelenSorular = await db.collection("sorular").get().then(
      (res) {
        res.docs.forEach((doc) {
          // print(doc.data());
          var veri = doc.data();
          print(veri["soruicerik"]);
          print(veri["sorucevap"]);
          sorular.add(veri["soruicerik"]);
          cevaplar.add(veri["sorucevap"]);
        });
        print("veriler alındı");
      },
      onError: (e) => print("Veriler alınırken hata meydana geldi: $e"),
    );
  }

  void cevapla(bool cevap, BuildContext context) {
    setState(() {
      if (yarismaBittimi) return;
      // Sorunun cevabı kontrol edilecek....
      // eğer cevap doğruysa
      if (cevaplar[soruNo] == cevap) {
        puan += puanArtisMiktari;
        dogruSayisi++;
        ikonlar.add(
          Icon(
            Icons.check,
            color: Colors.greenAccent,
          ),
        );
      } else {
        // eğer cevap yanlış ise
        // puan arttırmaya gerek yok
        yanlisSayisi++;
        ikonlar.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      // Yarışmanın bitip bitmediği kontrol ediliyor.
      if (soruNo == sorular.length - 1) {
        yarismaBittimi = true;
        print("yarışma bitti");
        showDialog<String>(
          context: context,
          // dialog penceresinin dışına tıklandığında dialog penceresinin kapanmasını önler
          barrierDismissible: false,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Bilgi'),
            content: Text("Yarışma bitti!\nPuanınız : $puan"),
            backgroundColor: Colors.white,
            elevation: 20,
            actions: <Widget>[
              /* TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),*/
              TextButton(
                onPressed: () {
                  setState(() {
                    soruNo = 0;
                    puan = 0;
                    ikonlar.clear();
                    dogruSayisi = 0;
                    yanlisSayisi = 0;
                    yarismaBittimi = false;
                  });

                  Navigator.pop(context, 'OK');
                },
                child: const Text('Yeniden Başlat'),
              ),
            ],
          ),
        );
      } else
        // yarışma henüz bitmedi. sonraki soruya geçiliyor.
        soruNo++;
    });

    print(soruNo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: FutureBuilder(
          future: getQuestions(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return buildSoruEkrani(context);
          },
        ), // buildSoruEkrani(context),
      ),
    );
  }

  Column buildSoruEkrani(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'AREL Bilgi Yarışması',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              Text(
                '$puan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          '${soruNo + 1}/${sorular.length}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            sorular[soruNo],
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  cevapla(true, context);
                },
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(10),
                  elevation: 25,
                ),
                child: Text(
                  "Doğru",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  cevapla(false, context);
                },
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(10),
                  elevation: 25,
                ),
                child: Text(
                  "Yanlış",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: ikonlar,
          ),
        )
      ],
    );
  }
}
