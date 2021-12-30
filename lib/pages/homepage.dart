import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pase08/main.dart';
import '../models/carousel_model.dart';
import '../widget/navigation_drawer_widget.dart';


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
          )
        ],
      ),
    ),
  );
}
