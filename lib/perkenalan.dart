import 'package:flutter/material.dart';

var lokasi = "JOGJA";
var d = 0.123;
String nama = "faizal";
int no = 1;
var no2;
// no2 = no + 1; // harus berupa deklarasi

// null safety, nullable
int? angka1; //null
var room; //null
late int no3;

Widget buatWidget() {
  return MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hallo"),
            Image.network("https://pophariini.com/wp-content/uploads/2019/01/INDO-POP-URBAN.jpg"),
            Icon(Icons.star, size: 30, color: Colors.yellow,)
          ],
        ),
      ),
    ),
  );
}

void main() {
  print("INIXINDO");
  print("INIXINDO " + lokasi);
  debugPrint(nama);
  debugPrint("${d}");
  print(d);
  print(angka1); //null
  print(room); //null

  no3 = 3;
  print(no3);
  runApp(buatWidget());
}
