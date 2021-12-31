import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pase08/common/network_service.dart';
import 'package:pase08/models/pasar_saham.dart';
import 'package:pase08/pages/pasar_saham_detail.dart';
import 'package:provider/src/provider.dart';
import 'package:http/http.dart' as http;

class PasarSaham extends StatefulWidget {
  static const ROUTE_NAME = '/pasarSaham';

  @override
  _PasarSahamState createState() => _PasarSahamState();
}

class _PasarSahamState extends State<PasarSaham> {
  List<Saham>? sahams;

  Future<void> getData(BuildContext context) async {
    final response = await http
        .get(Uri.parse('http://10.0.2.2:8000/pasarsaham/flutter'));

    dynamic zz = json.decode(response.body);


    List<Saham> resp = List.empty(growable: true);

    for (dynamic z in zz) {
      Saham saham = Saham.fromJson(z);
      resp.add(saham);
    }

    setState(() {
      sahams = resp;
    });
  }

  @override
  void initState() {
    super.initState();
    getData(context);
  }

  @override
  Widget build(BuildContext context) {
    if (sahams == null) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Loading..."),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Pasar Saham'),
        ),
        body: ListView.builder(
          itemCount: sahams!.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PasarSahamDetail(sahams?[index].merekBisnis?? ''))),
                child: Card(
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (sahams?[index].gambarUsaha != null)
                        decodeImage(sahams![index].gambarUsaha!),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              sahams?[index].merekBisnis ?? '',
                              style: new TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Nilai Bisnis',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text('Rp${sahams?[index].pendanaanDibutuhkan ?? 0}'),
                            SizedBox(
                              height: 8.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }


  Image imageFromBase64String(String base64String) {
    return Image.memory(base64Decode(base64String));
  }

  Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

  String base64String(Uint8List data) {
    return base64Encode(data);
  }

  Image decodeImage(String image) {
    return imageFromBase64String(image.substring(2, image.length-1));
  }
}
