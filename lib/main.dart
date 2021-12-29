import 'package:pase08/pages/login.page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart' show debugPrint, kIsWeb;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:pase08/common/network_service.dart';
import 'package:provider/provider.dart';




void main() {
  runApp(const MyApp());
}

const MaterialColor yukInvestAppBarColor = const MaterialColor(
  0xff3D56B2,
  const <int, Color> {
    50: const Color(0xff3D56B2),
    100: const Color(0xff3D56B2),
    200: const Color(0xff3D56B2),
    300: const Color(0xff3D56B2),
    400: const Color(0xff3D56B2),
    500: const Color(0xff3D56B2),
    600: const Color(0xff3D56B2),
    700: const Color(0xff3D56B2),
    800: const Color(0xff3D56B2),
    900: const Color(0xff3D56B2),
  });

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
          home: const LoginPage(),
          routes: {"/login": (BuildContext context) => const LoginPage()},
        ));
  }
}



