import 'package:flutter/material.dart';
<<<<<<< HEAD
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

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Yuk Invest!'),
      elevation: 0,
    ),
    body: Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          // Carousel Section
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            height: 190,
            padding: EdgeInsets.all(24),
            child: Swiper(
              onIndexChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              autoplay: true,
              layout: SwiperLayout.DEFAULT,
              itemCount: carousels.length,
              itemBuilder: (BuildContext context, index){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(carousels[index].image),
                      fit: BoxFit.cover),
                    ),
                  );
              },
            ),
          ),
          // SizedBox(height: 5),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Row(
                children: map<Widget> (
                  carousels,
                  (index, image) {
                    return Container(
                      alignment: Alignment.center,
                      height: 6,
                      width: 6,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current==index?yukInvestAppBarColor:Colors.grey
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
          // Section widget
          // Padding (
          //   padding: EdgeInsets.only(left: 16, top: 24),
          //   child: Text(
          //     'Yuk Invest!'
          //   ),
          // )
          SizedBox(
                  height: 16,
                ),
          Container(
            height: 144,
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(187, 198, 230, 1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/bobaa.jpeg',
                              height: 60,
                              width: 80,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'StreetBoba',
                                    style: TextStyle(fontSize: 18, 
                                    fontWeight:FontWeight.bold, 
                                    color: yukInvestAppBarColor
                                    )
                                  ),
                                  Text(
                                    'Senayan City',
                                    style: TextStyle(fontSize: 12, 
                                    color: Colors.black,
                                    )
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(187, 198, 230, 1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/bobaa.jpeg',
                              height: 60,
                              width: 80,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'StreetBoba',
                                    style: TextStyle(fontSize: 18, 
                                    fontWeight:FontWeight.bold, 
                                    color: yukInvestAppBarColor
                                    )
                                  ),
                                  Text(
                                    'Plaza Senayan',
                                    style: TextStyle(fontSize: 12, 
                                    color: Colors.black,
                                    )                                    
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(187, 198, 230, 1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/bobaa.jpeg',
                              height: 60,
                              width: 80,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'StreetBoba',
                                    style: TextStyle(fontSize: 18, 
                                    fontWeight:FontWeight.bold, 
                                    color: yukInvestAppBarColor
                                    )
                                  ),
                                  Text(
                                    'Gandaria City',
                                    style: TextStyle(fontSize: 12, 
                                    color: Colors.black,
                                    )
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(187, 198, 230, 1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/bobaa.jpeg',
                                height: 60,
                                width: 80,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'StreetBoba',
                                      style: TextStyle(fontSize: 18, 
                                      fontWeight:FontWeight.bold, 
                                      color: yukInvestAppBarColor
                                      )
                                    ),
                                    Text(
                                      'Plaza Indonesia',
                                      style: TextStyle(fontSize: 12, 
                                        color: Colors.black,
                                        )
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
                  height: 16,
                ),
          Center(
            child: Text(
            "Investasi UMKM",
            style: TextStyle(fontSize: 18, 
                      fontWeight:FontWeight.bold, 
                      color: Color.fromRGBO(20, 39, 155, 1),
            )
          ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.all(10),
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.black,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/investasi.png',
                  height: 60,
                  width: 80,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MyApp() ;
                          }));
                        },
                        child: Text('Lihat Investasi UMKM'),
                      ),
                      // Text(
                      //   "Lihat Investasi UMKM",
                      //   style: TextStyle(fontSize: 14, 
                      //     color: Colors.black,
                      //     )
                        
                      // ),
                      Text(
                        "Lihat daftar investasi bisnis yang sedang berlangsung dan temukan peluang untuk berinvestasi hari ini.",
                        style: TextStyle(fontSize: 10, 
                          color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
            "Daftar UMKM",
            style: TextStyle(fontSize: 18, 
                      fontWeight:FontWeight.bold, 
                      color: Color.fromRGBO(20, 39, 155, 1),
            )
          ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.all(10),
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.black,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/investasi.png',
                  height: 60,
                  width: 80,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MyApp() ;
                          }));
                        },
                        child: Text('Lihat Daftar UMKM'),
                      ),
                      // Text(
                      //   "Lihat Daftar UMKM",
                      //   style: TextStyle(fontSize: 14, 
                      //     color: Colors.black,
                      //     ),
                      //   onTap: () {
                      //     Navigator.push(context,
                      //         MaterialPageRoute(builder: (context) {
                      //       return Sesuai();
                      //     }));
                      //   },
                      // ),
                      Text(
                        "Tentukan pilihan bisnis-bisnis yang sesuai dengan keinginan Anda!",
                        style: TextStyle(fontSize: 10, 
                          color: Colors.black,
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp() ;
                    }));
                  },
                  child: Text('Leave Us Feedback'),
                ),
            TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyFeedbackPage();
                    }));
                  },
                  child: Text('See feedbacks'),
                ),
        ],
      ),
    ),
  );
}




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
