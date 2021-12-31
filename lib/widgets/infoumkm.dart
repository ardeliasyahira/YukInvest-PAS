import 'package:flutter/material.dart';

import '../screens/infoumkmdetail.dart';
// Blm import models !!!

class UmkmItemCard extends StatelessWidget {
  // final String id;
  final String merek_bisnis;
  final String deskripsi;
  final String produk_jasa;
  final String domisili;
  final String saham_umkm;
  final String pendanaan_dibutuhkan;
  final String logo_usaha_url;

  UmkmItemCard(
    {
      @required this.merek_bisnis,
      @required this.deskripsi,
      @required this.produk_jasa,
      @required this.domisili,
      @required this.saham_umkm,
      @required this.pendanaan_dibutuhkan,
      @required this.logo_usaha_url
    }
  );

  void selectUmkm(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      UmkmDetailScreen.routeName,
      arguments: merek_bisnis,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell (
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
                    '$merek_bisnis',
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