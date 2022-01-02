import 'package:pase08/common/network_service.dart';
import 'package:provider/provider.dart';
import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import '../screens/view_pendanaan.dart';
import 'dart:io';

class AddUMKMPage extends StatefulWidget {
  const AddUMKMPage({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const ROUTE_NAME = '/addumkm';

  @override
  State<AddUMKMPage> createState() => _PendanaanHomePageState();
}

class _PendanaanHomePageState extends State<AddUMKMPage> {
  final _formKey = GlobalKey<FormState>();
  String _nama = "";
  String _merekBisnis = "";
  String _domisili = "";
  String _produkJasa = "";
  String _sahamUMKM = "";
  int _pendanaanDibutuhkan = 0;
  String _deskripsi = "";
  final File _logoUsaha = File('assets/images/about.jpg');
  final File _gambarUsaha = File('assets/images/about.jpg');
  final File _ringkasanPerusahaan = File('assets/images/about.jpg');
  final bool _status = false;

  @override
  Widget build(BuildContext context) {
    final request = context.watch<NetworkService>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD UMKM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 400,
              child: Stack(
                children: <Widget>[
                  const Positioned(
                    left: 25,
                    top: 20,
                    right: 25,
                    child: Text('Silakan tambahkan UMKM anda',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                  ),
                  Positioned(
                    left: 15,
                    top: 90,
                    right: 15,
                    bottom: 15,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLength: 40,
                              decoration: InputDecoration(
                                labelText: "Nama",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _nama = value!;
                                });
                              },
                              onSaved: (String? value) {
                                _nama = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Kolom ini tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLines: 1,
                              maxLength: 60,
                              decoration: InputDecoration(
                                labelText: "Merek Bisnis",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _merekBisnis = value!;
                                });
                              },
                              onSaved: (String? value) {
                                _deskripsi = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Kolom ini tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLines: 1,
                              maxLength: 60,
                              decoration: InputDecoration(
                                labelText: "Domisili",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _domisili = value!;
                                });
                              },
                              onSaved: (String? value) {
                                _deskripsi = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Kolom ini tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLines: 1,
                              maxLength: 60,
                              decoration: InputDecoration(
                                labelText: "Produk Jasa",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _produkJasa = value!;
                                });
                              },
                              onSaved: (String? value) {
                                _deskripsi = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Kolom ini tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLines: 1,
                              maxLength: 60,
                              decoration: InputDecoration(
                                labelText: "Saham UMKM",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _sahamUMKM = value!;
                                });
                              },
                              onSaved: (String? value) {
                                _deskripsi = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Kolom ini tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLines: 1,
                              maxLength: 60,
                              decoration: InputDecoration(
                                labelText: "Pendanaan Dibutuhkan",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _pendanaanDibutuhkan = int.parse(value!);
                                });
                              },
                              onSaved: (String? value) {
                                _deskripsi = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Kolom ini tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLines: 5,
                              maxLength: 60,
                              decoration: InputDecoration(
                                labelText: "Deskripsi",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _deskripsi = value!;
                                });
                              },
                              onSaved: (String? value) {
                                _deskripsi = value!;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Kolom ini tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                          TextButton(
                            child: const Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF0B36A8)),
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                // Submit to Django server and wait for response
                                final response = await request.postJson(
                                    "https://yukinvest.herokuapp.com/pendanaan/api-add",
                                    convert.jsonEncode({
                                      'nama': _nama.toString(),
                                      'merek_bisnis': _merekBisnis,
                                      'domisili': _domisili,
                                      'produk_jasa': _produkJasa,
                                      'saham_umkm': _sahamUMKM,
                                      'pendanaan_dibutuhkan':
                                          _pendanaanDibutuhkan,
                                      'deskripsi': _deskripsi,
                                      'logo_usaha': _logoUsaha,
                                      'gambar_usaha': _gambarUsaha,
                                      'ringkasanPerusahaan':
                                          _ringkasanPerusahaan,
                                      'status': _status,
                                    }));
                                if (response != '') {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text("UMKM berhasil disimpan!"),
                                  ));
                                  Navigator.pushReplacementNamed(
                                      context, PendanaanHomePage.ROUTE_NAME);
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
