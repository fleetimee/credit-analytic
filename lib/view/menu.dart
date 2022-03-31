
import 'package:appku/view/about.dart';
import 'package:appku/view/home.dart';
import 'package:appku/view/input_data.dart';
import 'package:appku/view/manual.dart';
import 'package:appku/view/tab/list_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';

class MENU_DASH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        fit: StackFit.loose,
        children: <Widget>[
          ClipPath(
            // clipper: ClippingClass(),
            child: Container(
              width: double.infinity,
              // height: MediaQuery.of(context).size.height*4/7,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff40dedf), Color(0xff0fb2ea)],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 90,
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/images/home_images/user.png"),
            ),
          ),
          Positioned(
            left: 20,
            top: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "Hi John",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    )
                ),
                // Text(
                //     "Hi John",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 32,
                //     )
                // ),
                Text(
                    "Get your laundry washed, folded \nand delivered straight to your door.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )
                ),
              ],
            ),
          ),
          Positioned(
            left: 30,
            top: 300,
            right: 20,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => About()));},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _customCard(
                          imageUrl: "info.png",
                          item: "About",
                      ),
                ],
                ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 210,
            top: 300,
            right: 20,
            child: Row(
              children: <Widget>[
                  GestureDetector(
                    onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => Manuals()));},
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _customCard(
                          imageUrl: "manuals.png",
                          item: "Manuals",
                      ),
                  ],
                  ),
                  ),
              ],
            ),
          ),

          Positioned(
            left: 30,
            top: 500,
            right: 20,
            child: Row(
              children: <Widget>[
                  GestureDetector(
                    onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => Langkah()));},
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _customCard(
                          imageUrl: "tambah.png" ,
                          item: "Input Data",
                      ),
                  ],
                  ),
                  ),
                ],
              ),
          ),
          Positioned(
            left: 210,
            top: 500,
            right: 20,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => ListUser()));},
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _customCard(
                        imageUrl: "datanasabah.png",
                        item: "Nasabah",
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    );




  }

  _customCard({required String imageUrl, required String item }){
    return SizedBox(
      height: 168,
      width: 150,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
        ),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/home_images/" + imageUrl),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }



}

class ClippingClass extends CustomClipper<Path>{
  @override

  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var controlPoint = Offset(size.width - (size.width / 2), size.height - 120);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}