import 'package:appku/view/home.dart';
import 'package:appku/view/login.dart';
import 'package:appku/routes.dart';
import 'package:appku/view/login_page.dart';
import 'package:appku/view/main_page2.dart';
import 'package:appku/view/input_data.dart';
import 'package:appku/view/menu.dart';
import 'package:appku/view/user_edit_page.dart';
import 'package:appku/view/user_tambah_page.dart';
import 'package:flutter/material.dart';
import 'view/main_page.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainPage(),
      routes: {
        // MyRoutes.LANGKAH:(context)=>Langkah(),
        MyRoutes.LOGIN_PAGE:(context)=>LoginScreen(),
        MyRoutes.MAIN_PAGE:(context)=>MainPage(),
        MyRoutes.HOME:(context)=>Home(),
       MyRoutes.MAIN_PAGE2:(context)=>MainPage2(),
        MyRoutes.USER_EDIT_PAGE:(context)=>UserEditPage(),
        MyRoutes.USER_TAMBAH_PAGE:(context)=>UserTambahPage(),

      },
        // initialRoute: MyRoutes.LOGIN,
      initialRoute: MyRoutes.LOGIN_PAGE,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold
          ),
          headline2: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold
          ),
          headline3: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold
          ),
        )
      )
    );
  }
}