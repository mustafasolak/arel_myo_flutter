import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sepetiniz"),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("1984"),
              subtitle: Text("George Orwell"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Vakıf"),
              subtitle: Text("Isaac ASIMOV"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Şu Çılgın TÜRKLER"),
              subtitle: Text("Turgut ÖZAKMAN"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),

            /*
            Image.network(
              "https://arabam-blog.mncdn.com/wp-content/uploads/2021/01/2015_bmw_m4_iconic_lights_concept_14_1920x1080-1068x601.jpg",
            ),
            SizedBox(
              height: 30,
            ),
            Image.network(
              "https://www.webtekno.com/images/editor/default/0003/13/dc8a363161c5ca63eedc4c0357b3ebb0c003ae41.jpeg",
            ),
            SizedBox(
              height: 30,
            ),
            Image.network(
              "https://www.webtekno.com/images/editor/default/0003/13/dc8a363161c5ca63eedc4c0357b3ebb0c003ae41.jpeg",
            ),
            SizedBox(
              height: 30,
            ),
            Image.network(
              "https://www.webtekno.com/images/editor/default/0003/13/dc8a363161c5ca63eedc4c0357b3ebb0c003ae41.jpeg",
            ),
            */
            /*Container(width: double.infinity, height: 80, color: Colors.red),
            Container(width: double.infinity, height: 80, color: Colors.green),
            Container(width: double.infinity, height: 80, color: Colors.blue),
            Container(width: double.infinity, height: 80, color: Colors.yellow),
            Container(width: double.infinity, height: 80, color: Colors.pink),
            Container(width: double.infinity, height: 80, color: Colors.purple),
            Container(width: double.infinity, height: 80, color: Colors.blue),
            Container(width: double.infinity, height: 80, color: Colors.black),*/
          ],
        ),
      ),
    ),
  );
}
