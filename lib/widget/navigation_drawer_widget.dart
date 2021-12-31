import 'package:flutter/material.dart';
import 'package:pase08/main.dart';
import 'package:pase08/pages/homepage.dart';
import 'package:pase08/pages/pasar_saham.dart';
import 'package:provider/provider.dart';
import 'package:pase08/common/network_service.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  BuildContext? get context => null;

  @override
  Widget build(BuildContext context) {
    final request = context.watch<NetworkService>();
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 24),
            const Text('YukInvest!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: yukInvestAppBarColor)),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Pasar Saham',
              icon: Icons.attach_money,
              onClicked: () => Navigator.pushNamed(context, PasarSaham.ROUTE_NAME),
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
            const Divider(color: yukInvestAppBarColor),

            const SizedBox(height: 24),
            buildMenuItem(
              text: request.username != ""
                  ? "Hai, ${request.username}!"
                  : 'Masuk',
              icon: Icons.person,
              onClicked: request.username == ""
                  ? () => Navigator.pushNamed(context, "/login")
                  : () {},
            ),
            const SizedBox(height: 16),
            request.loggedIn
                ? ListTile(
                    title: const Text('Log Out'),
                    onTap: () async {
                      final response = await request.logoutAccount(
                          "http://127.0.0.1:8000/users/logoutflutter");
                      if (response['status']) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Successfully logged out!"),
                        ));
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const MyHomePage(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("An error occured, please try again."),
                        ));
                      }
                    },
                  )
                : buildMenuItem(
                    text: 'Daftar',
                    icon: Icons.person_add_alt_rounded,
                    onClicked: () => Navigator.pushNamed(context, "/register")),
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
    const color = yukInvestAppBarColor;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
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
