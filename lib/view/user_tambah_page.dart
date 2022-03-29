import 'dart:convert';

import 'package:appku/helper/constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/response_api.dart';
import 'package:http/http.dart' as http;

class UserTambahPage extends StatefulWidget {
  UserTambahPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _UserTambahPageState();
  }
}

class _UserTambahPageState extends State<UserTambahPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Tambah User"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'email',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: username,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    APIUbahUser(
                        context,
                        username.text.toString(),
                        email.text.toString(),
                        password.text.toString());
                  },
                  icon: Icon(Icons.add),
                  label: Text("Tambah User"))
            ],
          ),
        ));
  }

  APIUbahUser(context, username, email, password) async {
    var sp =await SharedPreferences.getInstance();

    var response = await http.post(Uri.parse(URL_SIMPAN), headers: {
      "Authorization": "Bearer ${sp.getString("token")} "
    }, body: {
      "username": username,
      "email": email,
      "password": password
    }).timeout(Duration(seconds: 10));
    var hasil = await ResponseAPI(sukses: null, data: null);

    if (response.statusCode == 200) {
      // print(response.body);
      hasil = await ResponseAPI.fromJson(json.decode(response.body));
    }
    if (await hasil.sukses == true) {
      ScaffoldMessenger.of(context)
          .showSnackBar(new SnackBar(content: Text("Berhasil Tambah")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(new SnackBar(content: Text("Gagal")));
    }
    try {} catch (e) {
      debugPrint(e.toString());
    }
  }
}
