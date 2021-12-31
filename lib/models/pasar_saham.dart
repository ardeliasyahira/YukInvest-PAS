import 'dart:core';

class Saham {
  int? id;
  String? merekBisnis;
  String? domisili;
  String? produkJasa;
  int? pendanaanDibutuhkan;
  String? deskripsi;
  String? logoUsaha;
  String? gambarUsaha;
  String? ringkasanPerusahaan;

  Saham(
      {this.id,
        this.merekBisnis,
        this.domisili,
        this.produkJasa,
        this.pendanaanDibutuhkan,
        this.deskripsi,
        this.logoUsaha,
        this.gambarUsaha,
        this.ringkasanPerusahaan});

  Saham.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    merekBisnis = json['merek_bisnis'];
    domisili = json['domisili'];
    produkJasa = json['produk_jasa'];
    pendanaanDibutuhkan = json['pendanaan_dibutuhkan'];
    deskripsi = json['deskripsi'];
    logoUsaha = json['logo_usaha'];
    gambarUsaha = json['gambar_usaha'];
    ringkasanPerusahaan = json['ringkasan_perusahaan'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['merek_bisnis'] = merekBisnis;
    data['domisili'] = domisili;
    data['produk_jasa'] = produkJasa;
    data['pendanaan_dibutuhkan'] = pendanaanDibutuhkan;
    data['deskripsi'] = deskripsi;
    data['logo_usaha'] = logoUsaha;
    data['gambar_usaha'] = gambarUsaha;
    data['ringkasan_perusahaan'] = ringkasanPerusahaan;
    return data;
  }
}