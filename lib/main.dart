// ignore_for_file: import_of_legacy_library_into_null_safe, use_key_in_widget_constructors, prefer_const_constructors

import 'package:pase08/models/umkm.dart';
import 'package:pase08/pages/admin.page.dart';
import 'package:pase08/pages/homepage.dart';
import 'package:pase08/pages/login.page.dart';
import 'package:pase08/pages/newuser.page.dart';
import 'package:pase08/pages/pasar_saham.dart';
import 'package:pase08/screen/infoumkmdetail.dart';
import 'package:pase08/screen/infoumkmscreen.dart';
import 'package:pendanaan/screens/view_pendanaan.dart';
import 'package:flutter/material.dart';
import 'package:pase08/common/network_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

const MaterialColor yukInvestAppBarColor = MaterialColor(
  0xff3D56B2,
  <int, Color> {
    50: Color(0xff3D56B2),
    100: Color(0xff3D56B2),
    200: Color(0xff3D56B2),
    300: Color(0xff3D56B2),
    400: Color(0xff3D56B2),
    500: Color(0xff3D56B2),
    600: Color(0xff3D56B2),
    700: Color(0xff3D56B2),
    800: Color(0xff3D56B2),
    900: Color(0xff3D56B2),
  });

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Umkm>? availableUmkm;
    return Provider(
        create: (_) {
          NetworkService request = NetworkService();

          return request;
        },
        child: MaterialApp(
          title: 'YukInvest',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(),
          routes: {
            "/login": (BuildContext context) => const LoginPage(),
            "/homepage": (BuildContext context) => const MyHomePage(),
            "/register": (BuildContext context) => const NewUser(),
            "/adminpage": (BuildContext context) => const AdminPage(),
            "/pasarSaham": (BuildContext context) => const PasarSaham(),
            "/pendanaan": (BuildContext context) => const PendanaanHomePage(),
            "/info-umkm": (BuildContext context) => InfoUmkmScreen(availableUmkm),
            "/umkm-detail": (BuildContext context) => const UmkmDetailScreen(),
          },

        ));
  }
}



