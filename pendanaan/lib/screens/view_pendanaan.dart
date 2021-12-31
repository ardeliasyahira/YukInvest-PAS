// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pase08/common/network_service.dart';
import 'package:provider/provider.dart';
//import 'package:echo/widgets/drawer_menu.dart';
import '../models/umkm.dart';
import '../screens/form_pendanaan.dart';
import '../widgets/umkm_card.dart';

class PendanaanHomePage extends StatefulWidget {
  const PendanaanHomePage({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const ROUTE_NAME = '/viewumkm';

  @override
  State<PendanaanHomePage> createState() => _PendanaanHomePageState();
}

class _PendanaanHomePageState extends State<PendanaanHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UMKM'),
      ),
      //drawer: const DrawerMenu(PendanaanHomePage.ROUTE_NAME),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                  left: 30, top: 20, right: 30, bottom: 0),
              child: const Text("UMKM Anda",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 10, top: 0, right: 10, bottom: 15),
              padding: const EdgeInsets.all(10),
              constraints: const BoxConstraints(
                minHeight: 30,
                maxHeight: 375,
              ),
              child: FutureBuilder(
                  future: fetchUMKM(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<UMKM>? umkm = snapshot.data as List<UMKM>;
                      return umkm.isEmpty
                          ? const Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 30.0),
                                child: Text(
                                  'Anda belum mendaftarkan UMKM Anda.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            )
                          : ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: umkm.length,
                              itemBuilder: (context, index) {
                                return UMKMCard(umkm[index]);
                              },
                            );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF0B36A8),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddUMKMPage()));
        },
        tooltip: 'Tambah UMKM',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<List<UMKM>> fetchUMKM() async {
    final request = context.watch<NetworkService>();
    String url = 'https://yukinvest.herokuapp.com/pendanaan/api-view';

    final response = await request.get(url);

    List<UMKM> result = [];
    for (var d in response) {
      if (d != null) {
        result.add(UMKM.fromJson(d));
      }
    }

    return result;
  }
}
