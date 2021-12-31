import 'package:pase08/pages/homepage.dart';
import 'package:pase08/pages/login.page.dart';
import 'package:pase08/pages/newuser.page.dart';
import 'package:pase08/pages/admin.page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart' show debugPrint, kIsWeb;
import 'package:pase08/pages/newuser.page.dart';
import 'package:pase08/pages/pasar_saham.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD
=======
import 'package:pase08/common/network_service.dart';
import 'package:provider/provider.dart';
>>>>>>> e267f34b0ea080d980551a8efb16bf36eb581dc8
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pase08/screen/feedbacklist.dart';
import 'models/carousel_model.dart';
import 'widget/navigation_drawer_widget.dart';
import 'package:pase08/screen/formfeedback.dart';
import 'package:pase08/screen/form.dart';
import 'package:pase08/screen/formulir.dart';
import 'package:pase08/screen/feedbacklist.dart'; // EXAMPLE OF IMPORTING AUTH LIBRARY

void main() {
  runApp(MyApp());
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
=======

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
>>>>>>> efcf1a01899f4411fb806fd5ff303e9911da5b5e

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'YukInvest',
      theme: ThemeData(
<<<<<<< HEAD
        primarySwatch: yukInvestAppBarColor,
      ),
      home: MyHomePage(),
=======
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
      home: const MyHomePage(title: 'YukInvest!'),
>>>>>>> efcf1a01899f4411fb806fd5ff303e9911da5b5e
    );
  }
}

class MyHomePage extends StatefulWidget {
<<<<<<< HEAD
=======
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

>>>>>>> efcf1a01899f4411fb806fd5ff303e9911da5b5e
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
<<<<<<< HEAD
  int _current = 0;
=======
    return Provider(
        create: (_) {
          NetworkService request = NetworkService();
>>>>>>> e267f34b0ea080d980551a8efb16bf36eb581dc8

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
          home: MyHomePage(),
          routes: {
            "/login": (BuildContext context) => const LoginPage(),
            "/homepage": (BuildContext context) => MyHomePage(),
            "/register": (BuildContext context) => const NewUser(),
            "/adminpage": (BuildContext context) => const AdminPage(),
            "/pasarSaham": (BuildContext context) => PasarSaham(),
          },
        ));
  }
}
<<<<<<< HEAD




=======
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Homepage',
            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> efcf1a01899f4411fb806fd5ff303e9911da5b5e
=======
>>>>>>> e267f34b0ea080d980551a8efb16bf36eb581dc8
