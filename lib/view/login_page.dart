import 'dart:convert';

import 'package:appku/helper/constant.dart';
import 'package:appku/routes.dart';
import 'package:flutter/material.dart';

import '../model/response_api.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
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
              TextField(
                controller: email,
                decoration: new InputDecoration(
                    hintText: "Masukkan Email Anda",
                    labelText: "Email",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),
              // TextFormField(
              //   controller: email,
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'email',
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: new InputDecoration(
                    hintText: "Masukkan Password Anda",
                    labelText: "Password",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),
              // TextFormField(
              //   controller: password,
              //   obscureText: true,
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'password',
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    APILogin(context, email.text.toString(),
                        password.text.toString());
                  },
                  icon: Icon(Icons.login),
                  label: Text("Login"))
            ],
          ),
        ));
  }

  APILogin(context, email, password) async {
    var response = await http.post(Uri.parse(URL_LOGIN), body: {
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
          .showSnackBar(new SnackBar(content: Text("Berhasil Login")));
      var sp = await SharedPreferences.getInstance();
      await sp.setString("token", hasil.data["token"]);
      Navigator.of(context).pushNamed(MyRoutes.MAIN_PAGE);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(new SnackBar(content: Text("Gagal")));
    }
    try {} catch (e) {
      debugPrint(e.toString());
    }
  }
}
