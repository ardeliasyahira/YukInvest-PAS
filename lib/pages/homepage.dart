import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pase08/main.dart';
import 'package:pase08/screen/feedbacklist.dart';
import '../models/carousel_model.dart';
import '../widget/navigation_drawer_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
        drawer: const NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Yuk Invest!'),
          elevation: 0,
        ),
        body: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            // Carousel Section
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              height: 190,
              padding: const EdgeInsets.all(24),
              child: Swiper(
                onIndexChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                autoplay: true,
                layout: SwiperLayout.DEFAULT,
                itemCount: carousels.length,
                itemBuilder: (BuildContext context, index) {
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
              children: <Widget>[
                Row(
                  children: map<Widget>(carousels, (index, image) {
                    return Container(
                      alignment: Alignment.center,
                      height: 6,
                      width: 6,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle)
                          // color: _current==index?yukInvestAppBarColor:Colors.grey),
                    );
                  }),
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
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 144,
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(187, 198, 230, 1),
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
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text('StreetBoba',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: yukInvestAppBarColor)),
                                    Text('Senayan City',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(187, 198, 230, 1),
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
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text('StreetBoba',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: yukInvestAppBarColor)),
                                    Text('Plaza Senayan',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(187, 198, 230, 1),
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
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text('StreetBoba',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: yukInvestAppBarColor)),
                                    Text('Gandaria City',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(187, 198, 230, 1),
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
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text('StreetBoba',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: yukInvestAppBarColor)),
                                    Text('Plaza Indonesia',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ))
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
            const SizedBox(
              height: 16,
            ),
            const Center(
              child: Text("Investasi UMKM",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(20, 39, 155, 1),
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(10),
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: const [
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
                  const SizedBox(width: 20),
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
                              return const MyApp();
                            }));
                          },
                          child: const Text('Lihat Investasi UMKM'),
                        ),
                        // Text(
                        //   "Lihat Investasi UMKM",
                        //   style: TextStyle(fontSize: 14,
                        //     color: Colors.black,
                        //     )

                        // ),
                        const Text(
                            "Lihat daftar investasi bisnis yang sedang berlangsung dan temukan peluang untuk berinvestasi hari ini.",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text("Daftar UMKM",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(20, 39, 155, 1),
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(10),
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: const [
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
                  const SizedBox(width: 20),
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
                              return const MyApp();
                            }));
                          },
                          child: const Text('Lihat Daftar UMKM'),
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
                        const Text(
                            "Tentukan pilihan bisnis-bisnis yang sesuai dengan keinginan Anda!",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyApp();
                }));
              },
              child: const Text('Leave Us Feedback'),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyFeedbackPage();
                }));
              },
              child: const Text('See feedbacks'),
            ),
          ],
        ),
      );
}
