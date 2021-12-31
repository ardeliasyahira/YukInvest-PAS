import 'dart:io';

class UMKM {
  final dynamic user;
  final String nama;
  final String merekBisnis;
  final String domisili;
  final String produkJasa;
  final String sahamUMKM;
  final int pendanaanDibutuhkan;
  final String deskripsi;
  final String logoUsaha;
  final String gambarUsaha;
  final File ringkasanPerusahaan;
  final bool status;

  const UMKM({
    required this.user,
    required this.nama,
    required this.merekBisnis,
    required this.domisili,
    required this.produkJasa,
    required this.sahamUMKM,
    required this.pendanaanDibutuhkan,
    required this.deskripsi,
    required this.logoUsaha,
    required this.gambarUsaha,
    required this.ringkasanPerusahaan,
    required this.status,
  });

  factory UMKM.fromJson(Map<String, dynamic> json) => UMKM(
        user: json["fields"]["user"],
        nama: json["fields"]["nama"],
        merekBisnis: json["fields"]["merekBisnis"],
        domisili: json["fields"]["domisili"],
        produkJasa: json["fields"]["produkJasa"],
        sahamUMKM: json["fields"]["sahamUMKM"],
        pendanaanDibutuhkan: json["fields"]["pendanaanDibutuhkan"],
        deskripsi: json["fields"]["deskripsi"],
        logoUsaha: json["fields"]["logoUsaha"],
        gambarUsaha: json["fields"]["gambarUsaha"],
        ringkasanPerusahaan: json["fields"]["ringkasanPerusahaan"],
        status: json["fields"]["status"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "nama": nama,
        "merekBisnis": merekBisnis,
        "domisili": domisili,
        "produkJasa": produkJasa,
        "sahamUMKM": sahamUMKM,
        "pendanaanDibutuhkan": pendanaanDibutuhkan,
        "deskripsi": deskripsi,
        "logoUsaha": logoUsaha,
        "gambarUsaha": gambarUsaha,
        "ringkasanPerusahaan": ringkasanPerusahaan,
        "status": status,
      };
}
