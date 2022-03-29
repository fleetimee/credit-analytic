import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home:new Agunan(),
  ));
}

class Agunan extends StatefulWidget{
  @override
  _AgunanState createState() => new _AgunanState();
}

class _AgunanState extends State<Agunan> {
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
                    hintText: "Barang Agunan :",
                    labelText: "Barang Agunan :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Asuransi:",
                    labelText: "Asuransi :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Nilai Agunan :",
                    labelText: "Nilai Agunan :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Bukti Kepemilikan agunan :",
                    labelText: "Bukti Kepemilikan agunan  :",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Izin yang dimiliki :",
                    labelText: "Izin yang dimiliki :",
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