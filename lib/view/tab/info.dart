import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoState();
  }
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    var judul = "Info".toUpperCase();
    var subjudul1 = "About Us";
    var isi1 =
        "Inixindo didirikan pada 15 Juli 1991, pada saat yang sama dengan kenaikan popularitas Open System di tahun 90-an. Dimulai dengan visioner pendiri Inixindo, Ifik Arifin, lulusan Ilmu Komputer dari University of Kaiserslautern, Jerman, yang memprediksi bahwa pasar TI akan mendominasi dengan Open System dan Internet. Inixindo didirikan dengan dukungan banyak platform yang berbeda mulai dari UNIX, Windows, UNIX dari IBM AIX ke SUN Microsystems Solaris, dan juga Sistem Operasi Linux. Pada tahun 1995, ketika internet mulai menjadi alat hubung penting dalam komunikasi, perkembangan pemrograman komputer, User Interface Design, akses database dan segala sesuatu yang ada hubungannya dengan Teknologi Informasi, Inixindo juga telah mengembangkan sumber daya teknis di semua bidang di atas.";

    return Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  judul,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Text(
                subjudul1,
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                isi1,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ));
  }
}
