import 'dart:convert';

import 'package:appku/helper/constant.dart';
import 'package:appku/model/response_api.dart';
import 'package:appku/routes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ListUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListUserState();
  }
}

class _ListUserState extends State<ListUser> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(children: [
          Card(
              margin: EdgeInsets.all(5),
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    Text(
                      "DAFTAR USER TERREGISTRASI :",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Divider(),
                    FutureBuilder(
                        future: APIAmbilSemuaUser(),
                        builder: ((context, snapshot) {
                          print(snapshot.hasData);
                          print(snapshot.hasData);

                          if (snapshot.hasData) {
                            ResponseAPI? resp = snapshot.data as ResponseAPI?;
                            print(resp);
                            print(resp!.data);
                            if (resp.data == null) {
                              return Text("Data Tidak Ada");
                            }
                            return ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onLongPress: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                                "Hapus User: ${resp.data[index]["username"]} ?"),
                                            actions: [
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("Batal")),
                                              ElevatedButton(
                                                  onPressed: () {
                                                    APIHapusUser(
                                                        context,
                                                        resp.data[index]["id"]
                                                            .toString());
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("HAPUS")),
                                            ],
                                          );
                                        });
                                  },
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        MyRoutes.USER_EDIT_PAGE,
                                        arguments: resp.data[index]);
                                  },
                                  child: Card(
                                      child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        Text(
                                          resp.data[index]["username"]
                                              .toString()
                                              .toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.blue),
                                        ),
                                        Text(
                                          resp.data[index]["email"],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(resp.data[index]
                                                        ["created_at"]
                                                    .toString())),
                                            Expanded(
                                                child: Text(
                                              resp.data[index]["updated_at"]
                                                  .toString(),
                                              textAlign: TextAlign.right,
                                            )),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                );
                              },
                              itemCount: resp.data.length,
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        })),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(MyRoutes.USER_TAMBAH_PAGE);
                        },
                        icon: Icon(Icons.add),
                        label: Text("Tambah User"))
                  ])))
        ]));
  }

  Future<ResponseAPI?> APIAmbilSemuaUser() async {
    try {
      var sp = await SharedPreferences.getInstance();
      var response = await http.get(Uri.parse(URL_SEMUA_USER), headers: {
        "Authorization": "Bearer ${sp.getString("token")} "
      }).timeout(Duration(seconds: 10));
      var hasil = ResponseAPI(sukses: null, data: null);
      if (response.statusCode == 200) {
        // print(response.body);
        hasil = ResponseAPI.fromJson(json.decode(response.body));
      }
      return hasil;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  APIHapusUser(context, id) async {
    var sp = await SharedPreferences.getInstance();

    print(id);
    var response = await http.delete(Uri.parse(URL_HAPUS), headers: {
      "Authorization": "Bearer ${sp.getString("token")} "
    }, body: {
      "id": id.toString(),
    }).timeout(Duration(seconds: 10));
    var hasil = await ResponseAPI(sukses: null, data: null);
    print(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      // print(response.body);
      hasil = await ResponseAPI.fromJson(json.decode(response.body));
    }
    if (await hasil.sukses == true) {
      ScaffoldMessenger.of(context)
          .showSnackBar(new SnackBar(content: Text("Berhasil Hapus")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(new SnackBar(content: Text("Gagal")));
    }
    try {} catch (e) {
      debugPrint(e.toString());
    }
  }
}
