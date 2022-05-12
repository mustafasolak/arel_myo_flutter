import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ornekproje/screens/anaekran.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print("firebase bağlanıldı");
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bilgi Yarışması',
      home: BilgiYarisMasiApp(),
    ),
  );
}

class BilgiYarisMasiApp extends StatelessWidget {
  const BilgiYarisMasiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnaEkran();
  }
}
