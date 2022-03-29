import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home:new Debitur(),
  ));
}

class Debitur extends StatefulWidget{
  @override
  _DebiturState createState() => new _DebiturState();
}

class _DebiturState extends State<Debitur> {
  List<String> ju=["Perdagangan","Export","Pasar","Kos"];
  String _ju = "Perdagangan";

  List<String> pend=["SD","SMP","SMA","SLTA"];
  String _pend = "SD";

  String _pd="";

  void _pilihPd(String value){
    setState((){
      _pd=value;
    });
  }

  void pilihJeus(String value){
    setState((){
      _ju=value;
    });
  }


  void pilihPend(String value){
    setState((){
      _pend=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    // return new Scaffold(
    //     appBar: new AppBar(
    //       leading: new Icon(Icons.list),
    //       title: new Text("Formulir"),
    //       backgroundColor: Colors.teal,
    //     ),
        return new ListView(
          children: [
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Peminjam 1 :",
                      labelText: "Peminjam 1 :",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                      )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Alamat 1 :",
                        labelText: "Alamat 1 :",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Lamanya berusaha (tahun) :",
                        labelText: "Lamanya berusaha (tahun) :",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Tempat Lahir :",
                        labelText: "Tempat Lahir :",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Tanggal Lahir :",
                        labelText: "Tanggal Lahir :",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),

                  // new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  // new RadioListTile(
                  //   value: "SD",
                  //   title: new Text("SD"),
                  //   groupValue: _pd,
                  //   onChanged: (String? value) {
                  //     _pilihPd(value!);
                  //   },
                  //   activeColor: Colors.red,
                  //   subtitle: new Text("Pilih Ini"),
                  // ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new Row(
                    children: <Widget> [
                      new Text("Pendidikan : ", style: new TextStyle(fontSize: 18.0, color: Colors.blue),),
                      new DropdownButton(
                        value: _pend,
                        items: pend.map((String value){
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(), onChanged: (String? value) {
                        pilihPend(value!);
                      },
                      ),
                    ],
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new Row(
                    children: <Widget> [
                      new Text("Jenis Usaha : ", style: new TextStyle(fontSize: 18.0, color: Colors.blue),),
                      new DropdownButton(
                        value: _ju,
                        items: ju.map((String value){
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(), onChanged: (String? value) {
                        pilihJeus(value!);
                      },
                      ),
                    ],
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "SKPK No :",
                        labelText: "SKPK No :",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Tanggal :",
                        labelText: "Tanggal :",
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
    // );
  }
}