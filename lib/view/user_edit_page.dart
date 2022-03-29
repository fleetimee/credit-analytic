import 'dart:convert';

import 'package:appku/helper/constant.dart';
import 'package:flutter/material.dart';

import '../model/response_api.dart';
import 'package:http/http.dart' as http;

class UserEditPage extends StatefulWidget {
  UserEditPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _UserEditPageState();
  }
}

class _UserEditPageState extends State<UserEditPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    username.text = args["username"];
    email.text = args["email"];

    return Scaffold(
        appBar: AppBar(
          title: Text("Edit User"),
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
                        args["id"].toString(),
                        username.text.toString(),
                        email.text.toString(),
                        password.text.toString());
                  },
                  icon: Icon(Icons.edit),
                  label: Text("Ubah User"))
            ],
          ),
        ));
  }

  APIUbahUser(context, id, username, email, password) async {
    var response = await http.put(Uri.parse(URL_UBAH), body: {
      "id": id,
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
          .showSnackBar(new SnackBar(content: Text("Berhasil")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(new SnackBar(content: Text("Gagal")));
    }
    try {} catch (e) {
      debugPrint(e.toString());
    }
  }
}
