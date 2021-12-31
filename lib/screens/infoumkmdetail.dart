import 'package:flutter/material.dart';

class UmkmDetailScreen extends StatelessWidget {
  static const routeName = '/umkm-detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
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
    final umkmId = ModalRoute.of(context).settings.arguments as String;
    final selectedUmkm = DUMMY_UMKM.firstWhere((umkm) => umkm.merek_bisnis == umkmId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedUmkm.merek_bisnis}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedUmkm.logo_usaha_url,
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
                          child: Text(selectedUmkm.merek_bisnis)),
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
                          child: Text(selectedUmkm.produk_jasa)),
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
                          child: Text(selectedUmkm.deskripsi)),
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
                          child: Text(selectedUmkm.domisili)),
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
                      child: Text(selectedUmkm.saham_umkm)),
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
                      child: Text(selectedUmkm.pendanaan_dibutuhkan)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}