import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'models/carousel_model.dart';
import 'widget/navigation_drawer_widget.dart';

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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YukInvest',
      theme: ThemeData(
        primarySwatch: yukInvestAppBarColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      title: Text('YukInvest!'),
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
        ],
      ),
    ),
  );
}




