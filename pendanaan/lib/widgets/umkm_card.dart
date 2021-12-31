import 'package:flutter/material.dart';
import '../models/umkm.dart';

class UMKMCard extends StatelessWidget {
  final UMKM umkm;

  const UMKMCard(this.umkm, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Image.network(umkm.logoUsaha.toString()),
              subtitle: Text(umkm.nama.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
