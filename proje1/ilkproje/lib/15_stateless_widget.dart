import 'package:flutter/material.dart';

void main() {
  runApp(SayacArttirma());
}

class SayacArttirma extends StatefulWidget {
  const SayacArttirma({Key? key}) : super(key: key);

  @override
  State<SayacArttirma> createState() => _SayacArttirmaState();
}

class _SayacArttirmaState extends State<SayacArttirma> {
  int sayac = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateless Widget"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Sayaç : $sayac",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sayac++;
                          print(sayac);
                        });
                      },
                      child: Text("Arttır"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sayac--;
                          print(sayac);
                        });
                      },
                      child: Text("Azalt"),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int sayac = 3;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateless Widget"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Sayaç : $sayac",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Arttır"),
                ),
              ]),
        ),
      ),
    );
  }
}
