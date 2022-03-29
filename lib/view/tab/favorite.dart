import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteState();
  }
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(5),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Rekomendasi Produk Hari ini :",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Divider(),
                  Container(
                    height: 100,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(child: Image.network("https://inixindojogja.co.id/wp-content/uploads/2022/01/27-Implementasi-Web-Token-400x250.jpg.webp")),
                        Card(child: Text("Training B"),),
                        Card(child: Text("Training C"),),
                        Card(child: Text("Training C"),),
                        Card(child: Text("Training C"),),
                        Card(child: Text("Training C"),),
                        Card(child: Text("Training C"),),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(5),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Daftar Workshop :",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Divider(),
                  Container(
                    height: 100,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(child: Text("Workshop A"),),
                        Card(child: Text("Workshop B"),),
                        Card(child: Text("Workshop C"),),
                        Card(child: Text("Workshop C"),),
                        Card(child: Text("Workshop C"),),
                        Card(child: Text("Workshop C"),),
                        Card(child: Text("Workshop C"),),

                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}