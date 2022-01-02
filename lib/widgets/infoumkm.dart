import 'package:flutter/material.dart';

import '../screens/infoumkmdetail.dart';
import '../models/umkm.dart';
// Blm import models !!!

class UmkmItemCard extends StatelessWidget {
  final int? id;
  final String? merekBisnis;
  final String? domisili;
  final String? produkJasa;
  final int? pendanaanDibutuhkan;
  final int? sahamUmkm;
  final String? deskripsi;
  final String? logoUsaha;
  final String? gambarUsaha;
  final String? ringkasanPerusahaan;

  UmkmItemCard(
      {@required this.id,
      @required this.merekBisnis,
      @required this.domisili,
      @required this.produkJasa,
      @required this.pendanaanDibutuhkan,
      @required this.sahamUmkm,
      @required this.deskripsi,
      @required this.logoUsaha,
      @required this.gambarUsaha,
      @required this.ringkasanPerusahaan});

  void selectUmkm(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      UmkmDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectUmkm(context),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    '$merekBisnis',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                '$deskripsi',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
