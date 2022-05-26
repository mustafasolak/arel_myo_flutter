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
  TextEditingController controllerVeri = TextEditingController();

  var db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final docRef = db.collection("cities").doc("SF");
    docRef.snapshots().listen(
          (event) => print("current data: ${event.data()}"),
          onError: (error) => print("Listen failed: $error"),
        );

    return Scaffold(
      appBar: AppBar(
        title: Text('Soru Ekleme Ekranı'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              TextButton(
                  onPressed: () {
                    final cities = db.collection("cities");
                    final data1 = <String, dynamic>{
                      "name": "San Francisco",
                      "state": "CA",
                      "country": "USA",
                      "capital": false,
                      "population": 860000,
                      "regions": ["west_coast", "norcal"]
                    };
                    cities.doc("SF").set(data1);

                    final data2 = <String, dynamic>{
                      "name": "Los Angeles",
                      "state": "CA",
                      "country": "USA",
                      "capital": false,
                      "population": 3900000,
                      "regions": ["west_coast", "socal"],
                    };
                    cities.doc("LA").set(data2);

                    final data3 = <String, dynamic>{
                      "name": "Washington D.C.",
                      "state": null,
                      "country": "USA",
                      "capital": true,
                      "population": 680000,
                      "regions": ["east_coast"]
                    };
                    cities.doc("DC").set(data3);

                    final data4 = <String, dynamic>{
                      "name": "Tokyo",
                      "state": null,
                      "country": "Japan",
                      "capital": true,
                      "population": 9000000,
                      "regions": ["kanto", "honshu"]
                    };
                    cities.doc("TOK").set(data4);

                    final data5 = <String, dynamic>{
                      "name": "Beijing",
                      "state": null,
                      "country": "China",
                      "capital": true,
                      "population": 21500000,
                      "regions": ["jingjinji", "hebei"],
                    };
                    cities.doc("BJ").set(data5);
                  },
                  child: Text("Add sample data")),
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
                  final city = <String, String>{
                    "name": "Los Angeles2",
                    "state": "CA",
                    "country": "USA"
                  };
                  /*   db
                      .collection("cities")
                      .doc("LA")
                      .set(city)
                      .then((value) => print("veri eklendi"))
                      .onError((e, _) => print("Error writing document: $e"));
                      */

                  /*      db
                      .collection("cities")
                      .doc("NY")
                      .set({"country": "USA", "name": "New YORK"});*/
                  /* db.collection("cities").doc().set({
                    "country": "Turkey",
                    "name": "Ankara",
                    "state": "Çankaya"
                  }).then((value) {
                    print("Veri başarılı şekilde eklendi.");
                  });*/

                  /*   db.collection("cities").doc("NY").set(
                      {"country": "USA", "name": "New YORK2"},
                      SetOptions(merge: false));
        */
                  /*
                  final docData = {
                    "username": "ahmet",
                    "password": "gecelerinyargıcı007",
                    "phone": "+905875545",
                    "registration_date": Timestamp.now(),
                    "lucky_numbers": [10, 7, 2],
                    "married": null
                  };
        
                  final nestedData = {
                    "pyhsic": 75,
                    "chemistry": 90,
                    "flutter": 100,
                  };
        
                  docData["marks"] = nestedData;
        
                  db
                      .collection("users")
                      .doc()
                      .set(docData)
                      .onError((e, _) => print("Error writing document: $e"))
                      .then((value) => print("Data added successfully"));
        */
                  // Add a new document with a generated id.
                  final data = {"name": "Tokyo", "country": "Japan"};

                  db.collection("cities").add(data).then((documentSnapshot) =>
                      print("Added Data with ID: ${documentSnapshot.id}"));

                  db.collection("users").add({
                    "username": "msolak",
                    "password": "qwerty"
                  }).then((value) =>
                      print("Yeni kaydolan kullanıcının ID'si :${value.id}"));

                  db
                      .collection("cities")
                      .doc("LA")
                      .update({"name": "Yeni hali"}).then(
                          (value) => print("veri güncellendi"));

                  /*
                  String soru_icerik = controllerSoruIcerik.text;
                  String str_soru_cevap = controllerSoruCevap.text;
                  bool soru_cevap =
                      str_soru_cevap.toLowerCase() == "true" ? true : false;
        
                  var soru = {"soruicerik": soru_icerik, "sorucevap": soru_cevap};
        
                  await db.collection("sorular").doc().set(soru);
                  print("veri eklendi");
                  controllerSoruCevap.clear();
                  controllerSoruIcerik.clear();
                  */
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
              TextField(
                controller: controllerVeri,
                decoration: InputDecoration(
                    hintText: "enter document name...",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  final docRef =
                      db.collection("cities").doc(controllerVeri.text);
                  docRef.get().then(
                    (DocumentSnapshot doc) {
                      var data = doc.data() as Map<String, dynamic>;
                      print(data["name"]);
                    },
                    onError: (e) => print("Error getting document: $e"),
                  );
                },
                child: Text("Veri çek"),
              ),
              TextButton(
                  onPressed: () async {
                    await db
                        .collection("cities")
                        .where("capital", isEqualTo: false)
                        .get()
                        .then(
                      (results) {
                        print(results);
                        results.docs.forEach((doc) {
                          var docData = doc.data() as Map<String, dynamic>;
                          print(docData["name"] + "," + docData["country"]);
                        });

                        print("Successfully completed");
                      },
                      onError: (e) => print("Error completing: $e"),
                    );
                    print("bakalım ben ne zaman ekrana yazılacağım");
                  },
                  child: Text("Get Multiple documents"))
            ]),
          ),
        ),
      ),
    );
  }
}
