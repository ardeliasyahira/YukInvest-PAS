import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pase08/common/network_service.dart';
import 'package:pase08/models/pasar_saham.dart';
import 'package:provider/src/provider.dart';
import 'package:http/http.dart' as http;

class PasarSahamDetail extends StatefulWidget {
  static const ROUTE_NAME = '/pasarSaham';
  String pk;

  @override
  _PasarSahamDetailState createState() => _PasarSahamDetailState();
  PasarSahamDetail(this.pk, {Key? key}) : super(key: key);
}

class _PasarSahamDetailState extends State<PasarSahamDetail> {
  @override
  void initState() {
    super.initState();
    getData(context);
  }

  Saham? saham;

  Future<void> getData(BuildContext context) async {
    final response = await http
        .get(Uri.parse('http://10.0.2.2:8000/pasarsaham/flutter/${widget.pk.replaceAll(' ', '%20')}'));

    dynamic sahamResp = json.decode(response.body);
    Saham resp = Saham.fromJson(sahamResp);

    setState(() {
      saham = resp;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (saham == null) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Loading..."),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Pasar Saham'),
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (saham?.gambarUsaha != null)
                decodeImage(saham!.gambarUsaha!),
              SizedBox(
                height: 12.0,
              ),
              Text(
                saham!.merekBisnis?? '',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "Nilai Bisnis",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text('Rp${saham!.pendanaanDibutuhkan ?? 0}'),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "Deskripsi Saham",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(saham!.deskripsi?? ''),
              SizedBox(
                height: 12.0,
              ),
            ],
          ),
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
