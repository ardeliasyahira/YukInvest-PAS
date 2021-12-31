import 'package:flutter/material.dart';

import '../widgets/infoumkm.dart';

class InfoUmkmScreen extends StatefulWidget {
  static const routeName = '/info-umkm';

  final List<Umkm> availableUmkm;

  InfoUmkmScreen(this.availableUmkm);

  @override
  _InfoUmkmScreenState createState() => _InfoUmkmScreenState();
}

class _InfoUmkmScreenState extends State<InfoUmkmScreen> {
  String categoryTitle;
  List<Umkm> displayedUmkm;
  var _loadedInitData = false;

  @override
  void initState() {
    // ...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final merekbisnisId = routeArgs['merek_bisnis'];
      displayedUmkm = widget.availableUmkm.where((umkm) {
        return umkm.merek_bisnis.contains(merekbisnisId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeUmkm(String umkmId) {
    setState(() {
      displayedUmkm.removeWhere((umkm) => umkm.merek_bisnis == umkmId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return UmkmItem(
            merek_bisnis: displayedUmkm[index].merek_bisnis,
            deskripsi: displayedUmkm[index].deskripsi,
            produk_jasa: displayedUmkm[index].produk_jasa,
            domisili: displayedUmkm[index].domisili,
            saham_umkm: displayedUmkm[index].saham_umkm,
            pendanaan_dibutuhkan: displayedUmkm[index].pendanaan_dibutuhkan,
            logo_usaha_url: displayedUmkm[index].logo_usaha_url,
          );
        },
        itemCount: displayedUmkm.length,
      ),
    );
  }
}
