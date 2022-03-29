import 'package:flutter/material.dart';

class MainPage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua"),),
    );
  }
}
