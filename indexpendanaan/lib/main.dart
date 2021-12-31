// ignore_for_file: deprecated_member_use, unnecessary_const, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pendanaan/screens/form_pendanaan.dart';
//import 'package:echo/widgets/drawer_menu.dart';

void main() {
  runApp(const MaterialApp(title: "Pendanaan", home: AboutUs()));
}

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);
  static const ROUTE_NAME = '/indexpendanaan';

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pendanaan"),
      ),
      //drawer: const DrawerMenu(Pendanaan.ROUTE_NAME),
      body: ListView(children: <Widget>[
        Container(
          padding:
              const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 20),
          child: Column(
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Text(
                    "Bergabunglah Bersama Yuk Invest",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    thickness: 5,
                    indent: 230,
                    endIndent: 230,
                    color: Color.fromRGBO(11, 53, 168, 1),
                  ),
                  Text(
                    "YukInvest hadir memberikan bantuan untuk mendorong masyarakat Indonesia untuk berinvestasi kepada UMKM demi memajukan perekonomian Indonesia.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Exo',
                      color: Color.fromRGBO(20, 51, 51, 1),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage("assets/images/about.jpg"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ajukan sekarang dan menjadi bagian dari keluarga kami!.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Exo',
                          color: Color.fromRGBO(20, 51, 51, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: const Text(" Ajukan "),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddUMKMPage()));
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
