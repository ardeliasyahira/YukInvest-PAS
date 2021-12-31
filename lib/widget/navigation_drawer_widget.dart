import 'package:flutter/material.dart';
import 'package:pase08/main.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  BuildContext? get context => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: padding, 
          children: <Widget> [
            const SizedBox(height: 24),
            Text('YukInvest!', 
              style: TextStyle(fontSize: 24, 
                                fontWeight:FontWeight.bold, 
                                color: yukInvestAppBarColor
                    )
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Pasar Saham',
              icon: Icons.attach_money,
              // onClicked: () => {
              //   Navigator.pushReplacement(
              //     context, 
              //     MaterialPageRoute(
              //       builder: (context) => const Sesuatu()));
              // }
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Daftar UMKM',
              icon: Icons.store,
              // onClicked: () => {
              //   Navigator.pushReplacement(
              //     context, 
              //     MaterialPageRoute(
              //       builder: (context) => const Sesuatu()));
              // }
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Pendanaan',
              icon: Icons.money_rounded,
              // onClicked: () => {
              //   Navigator.pushReplacement(
              //     context, 
              //     MaterialPageRoute(
              //       builder: (context) => const Sesuatu()));
              // }
              
            ),
            // Section Divider
            const SizedBox(height: 24),
            Divider(color: yukInvestAppBarColor),

            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Masuk',
              icon: Icons.person,
              // onClicked: () => {
              //   Navigator.pushReplacement(
              //     context, 
              //     MaterialPageRoute(
              //       builder: (context) => const Sesuatu()));
              // }
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Daftar',
              icon: Icons.person_add_alt_rounded,
              // onClicked: () => {
              //   Navigator.pushReplacement(
              //     context, 
              //     MaterialPageRoute(
              //       builder: (context) => const Sesuatu()));
              // }
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = yukInvestAppBarColor;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: Colors.grey[300],
      // onTap: () => {
      //     Navigator.pushReplacement(
      //       context!, 
      //       MaterialPageRoute(
      //         builder: (context) => const Sesuatu()));
      //   }
    );
  }
}
