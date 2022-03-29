import 'package:appku/routes.dart';
import 'package:appku/view/form_nasabah/analisa%20kredit%20mikro.dart';
import 'package:appku/view/form_nasabah/analisa_agunan.dart';
import 'package:appku/view/form_nasabah/analisa_karakter.dart';
import 'package:appku/view/form_nasabah/debitur_form.dart';
import 'package:appku/view/tab/info.dart';
import 'package:appku/view/tab/list_user.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'tab/favorite.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  var viewTabBar = [
    // Favorite(),
    ListUser(),
    // Info(),
    Debitur(),
    Analisa(),
    Agunan(),
    Karakter(),
  ];

  var viewTabBarTitle = [
    // Tab(
    //   icon: Icon(Icons.star),
    //   text: "Tab 1",
    // ),
    Tab(
      icon: Icon(Icons.account_box),
      text: "Tab 2",
    ),
    // Tab(
    //   icon: Icon(Icons.info),
    //   text: "Tab 3",
    // ),
    Tab(
      icon: Icon(Icons.star),
      text: "Debitur",
    ),
    Tab(
      icon: Icon(Icons.star),
      text: "Kredit",
    ),
    Tab(
      icon: Icon(Icons.star),
      text: "Agunan",
    ),
    Tab(
      icon: Icon(Icons.star),
      text: "Karakter",
    ),
  ];
  var tb;

  // List<Widget>? carouselItem = [
  //   "https://inixindojogja.co.id/wp-content/uploads/2022/01/27-Implementasi-Web-Token-400x250.jpg.webp",
  //   "https://inixindojogja.co.id/wp-content/uploads/2021/12/13-Berkarir-Sebagai-DevOps-Engineer-1-400x250.jpg.webp",
  //   "https://inixindojogja.co.id/wp-content/uploads/2022/02/Dampak-Urgensi-dan-Prioritas-Network-Operation-Center-400x250.png.webp"
  // ].map((i) {
  //   return Container(
  //       margin: EdgeInsets.all(5),
  //       child: SafeArea(
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.all(Radius.circular(20.0)),
  //           child: Stack(
  //             children: [
  //               InkResponse(
  //                 child: Image.network(
  //                   i,
  //                   fit: BoxFit.fill,
  //                   width: 1000,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ));
  // }).toList();
  //
  // var carouselOption = CarouselOptions(
  //     height: 400,
  //     aspectRatio: 1,
  //     reverse: false,
  //     autoPlay: true,
  //     enlargeCenterPage: true);List<Widget>? carouselItem = [
  //   "https://inixindojogja.co.id/wp-content/uploads/2022/01/27-Implementasi-Web-Token-400x250.jpg.webp",
  //   "https://inixindojogja.co.id/wp-content/uploads/2021/12/13-Berkarir-Sebagai-DevOps-Engineer-1-400x250.jpg.webp",
  //   "https://inixindojogja.co.id/wp-content/uploads/2022/02/Dampak-Urgensi-dan-Prioritas-Network-Operation-Center-400x250.png.webp"
  // ].map((i) {
  //   return Container(
  //       margin: EdgeInsets.all(5),
  //       child: SafeArea(
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.all(Radius.circular(20.0)),
  //           child: Stack(
  //             children: [
  //               InkResponse(
  //                 child: Image.network(
  //                   i,
  //                   fit: BoxFit.fill,
  //                   width: 1000,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ));
  // }).toList();
  //
  // var carouselOption = CarouselOptions(
  //     height: 400,
  //     aspectRatio: 1,
  //     reverse: false,
  //     autoPlay: true,
  //     enlargeCenterPage: true);

  @override
  void initState() {
    super.initState();
    tb = TabController(length: viewTabBar.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        ),
        child: NestedScrollView(
          controller: ScrollController(),
          physics: ClampingScrollPhysics(),
          body: TabBarView(
            children: viewTabBar,
            controller: tb,
          ),
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                pinned: true,
                // expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  // background: Image.network("https://www.greenscene.co.id/wp-content/uploads/2020/10/Naruto-10-696x497.jpg", fit: BoxFit.cover),
                  background: Container(
                    color: Colors.blue,
                    height: 300,
                    alignment: Alignment.bottomCenter,
                    // child: CarouselSlider(
                    //   items: carouselItem,
                    //   options: carouselOption,
                    // ),
                  ),
                ),
                bottom: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  tabs: viewTabBarTitle,
                  controller: tb,
                ),
              ),
            ];
          },
        ),
      ),
    );
  }
}
