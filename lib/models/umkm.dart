import 'dart:core';

class Umkm {
  int? id;
  String? merekBisnis;
  String? domisili;
  String? produkJasa;
  int? pendanaanDibutuhkan;
  int? sahamUmkm;
  String? deskripsi;
  String? logoUsaha;
  String? gambarUsaha;
  String? ringkasanPerusahaan;

  Umkm(
      {this.id,
      this.merekBisnis,
      this.domisili,
      this.produkJasa,
      this.pendanaanDibutuhkan,
      this.sahamUmkm,
      this.deskripsi,
      this.logoUsaha,
      this.gambarUsaha,
      this.ringkasanPerusahaan});

  Umkm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    merekBisnis = json['merek_bisnis'];
    domisili = json['domisili'];
    produkJasa = json['produk_jasa'];
    pendanaanDibutuhkan = json['pendanaan_dibutuhkan'];
    sahamUmkm = json['saham_umkm'];
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
    data['saham_umkm'] = this.sahamUmkm;
    data['deskripsi'] = this.deskripsi;
    data['logo_usaha'] = this.logoUsaha;
    data['gambar_usaha'] = this.gambarUsaha;
    data['ringkasan_perusahaan'] = this.ringkasanPerusahaan;
    return data;
  }
}
