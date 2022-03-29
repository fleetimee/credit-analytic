import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home:new Karakter(),
  ));
}

class Karakter extends StatefulWidget{
  @override
  _KarakterState createState() => new _KarakterState();
}

class _KarakterState extends State<Karakter> {
  @override
  Widget build(BuildContext context) {

    return new ListView(
      children: [
        new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Ulet dalam bisnis :",
                    labelText: "Ulet dalam bisnis :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Flexible/Kaku :",
                    labelText: "Flexible/Kaku :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Kreatif/Inovative :",
                    labelText: "Kreatif/Inovative  :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Memiliki kejujuran dlm bisnis :",
                    labelText: "Memiliki kejujuran dlm bisnis :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                maxLines: 3,
                decoration: new InputDecoration(
                    hintText: "Deskripsi pemohon :",
                    labelText: "Deskripsi pemohon :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              ElevatedButton.icon(
                  onPressed: () {

                  },
                  icon: Icon(Icons.add),
                  label: Text("Simpan"))
            ],
          ),
        ),
      ],
    );

  }
}