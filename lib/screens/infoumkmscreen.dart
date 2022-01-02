import 'package:flutter/material.dart';

import '../widgets/infoumkm.dart';
import '../models/umkm.dart';

class InfoUmkmScreen extends StatefulWidget {
  static const routeName = '/info-umkm';

  final List<Umkm> availableUmkm;

  InfoUmkmScreen(this.availableUmkm);

  @override
  _InfoUmkmScreenState createState() => _InfoUmkmScreenState();
}

class _InfoUmkmScreenState extends State<InfoUmkmScreen> {
  String umkmTitle;
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
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      umkmTitle = routeArgs['title']!;
      final umkmId = routeArgs['id'];
      displayedUmkm = widget.availableUmkm.where((umkm) {
        return umkm.merekBisnis!.contains(umkmId!);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeUmkm(String umkmId) {
    setState(() {
      displayedUmkm.removeWhere((umkm) => umkm.id == umkmId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(umkmTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return UmkmItemCard(
            id: displayedUmkm[index].id,
            merekBisnis: displayedUmkm[index].merekBisnis,
            domisili: displayedUmkm[index].domisili,
            produkJasa: displayedUmkm[index].produkJasa,
            pendanaanDibutuhkan: displayedUmkm[index].pendanaanDibutuhkan,
            sahamUmkm: displayedUmkm[index].sahamUmkm,
            deskripsi: displayedUmkm[index].deskripsi,
            logoUsaha: displayedUmkm[index].logoUsaha,
            gambarUsaha: displayedUmkm[index].gambarUsaha,
            ringkasanPerusahaan: displayedUmkm[index].ringkasanPerusahaan,
          );
        },
        itemCount: displayedUmkm.length,
      ),
    );
  }
}
