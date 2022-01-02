// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../dummy_data.dart';

class UmkmDetailScreen extends StatelessWidget {
  static const routeName = '/umkm-detail';

  const UmkmDetailScreen({Key? key}) : super(key: key);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final umkmId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedUmkm = DUMMY_UMKM.firstWhere((umkm) => umkm.id == umkmId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedUmkm.merekBisnis}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                'https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image.png',
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Merek Bisnis'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  // color: Theme.of(context).accentColor,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedUmkm.merekBisnis.toString())),
                ),
              ),
            ),
            buildSectionTitle(context, 'Produk Jasa'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  // color: Theme.of(context).accentColor,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedUmkm.produkJasa.toString())),
                ),
              ),
            ),
            buildSectionTitle(context, 'Deskripsi UMKM'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  // color: Theme.of(context).accentColor,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedUmkm.deskripsi.toString())),
                ),
              ),
            ),
            buildSectionTitle(context, 'Lokasi'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  // color: Theme.of(context).accentColor,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedUmkm.domisili.toString())),
                ),
              ),
            ),
            buildSectionTitle(context, 'Saham UMKM'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  // color: Theme.of(context).accentColor,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedUmkm.sahamUmkm.toString())),
                ),
              ),
            ),
            buildSectionTitle(context, 'Pendanaan Dibutuhkan UMKM'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  // color: Theme.of(context).accentColor,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedUmkm.pendanaanDibutuhkan.toString())),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
