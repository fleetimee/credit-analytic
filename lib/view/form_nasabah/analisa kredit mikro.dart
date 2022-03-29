import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home:new Analisa(),
  ));
}

class Analisa extends StatefulWidget{
  @override
  _AnalisaState createState() => new _AnalisaState();
}

class _AnalisaState extends State<Analisa> {
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
                      hintText: "Kredit yg diusulkann :",
                      labelText: "Kredit yg diusulkan :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Provisi (%):",
                      labelText: "Provisi (%) :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Digunakan untuk :",
                      labelText: "Digunakan untuk :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Pinjaman lainnya :",
                      labelText: "Pinjaman lainnya :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Nilai asset (diluar rumah) :",
                      labelText: "Nilai asset (diluar rumah) :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Penjualan/bln yll :",
                      labelText: "Penjualan/bln yll :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Biaya bahan (HPP) dan bagi hasil/bln :",
                      labelText: "Biaya bahan (HPP) dan bagi hasil/bln :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Biaya tenaga kerja :",
                      labelText: "Biaya tenaga kerja :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Biaya kebersihan :",
                      labelText: "Biaya kebersihan :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),


                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Biaya hidup :",
                      labelText: "Biaya hidup :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),


                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Biaya /thn (%) :",
                      labelText: "Biaya /thn (%) :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Jangka waktu (bulan) :",
                      labelText: "Jangka waktu (bulan) :",
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