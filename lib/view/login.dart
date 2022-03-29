import 'dart:convert';
import 'package:appku/helper/constant.dart';
import 'package:appku/routes.dart';
import 'package:flutter/material.dart';
import '../model/response_api.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'background.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN KREDIT MIKRO",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: "Username"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  labelText: "Password"
                ),
                obscureText: true,
              ),
            ),

            SizedBox(height: size.height * 0.05),

            ElevatedButton.icon(
                onPressed: () {
                  APILogin(context, email.text.toString(),
                      password.text.toString());
                },
                icon: Icon(Icons.login),
                label: Text("Login"))

          ],
        ),
      ),
    );
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
      Navigator.of(context).pushNamed(MyRoutes.HOME);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(new SnackBar(content: Text("Gagal")));
    }
    try {} catch (e) {
      debugPrint(e.toString());
    }
  }
}