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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['merek_bisnis'] = this.merekBisnis;
    data['domisili'] = this.domisili;
    data['produk_jasa'] = this.produkJasa;
    data['pendanaan_dibutuhkan'] = this.pendanaanDibutuhkan;
    data['deskripsi'] = this.deskripsi;
    data['logo_usaha'] = this.logoUsaha;
    data['gambar_usaha'] = this.gambarUsaha;
    data['ringkasan_perusahaan'] = this.ringkasanPerusahaan;
    return data;
  }
}