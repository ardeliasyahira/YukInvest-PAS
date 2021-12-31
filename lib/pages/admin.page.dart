import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const ROUTE_NAME = '/adminpage';
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Page YukInvest"),
      ),
      body: const Center(
        child: Text('Belum ada implementasi'),
      ),
    );
  }
}