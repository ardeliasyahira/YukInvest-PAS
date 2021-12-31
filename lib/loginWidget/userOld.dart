import 'package:flutter/material.dart';
import 'package:pase08/pages/login.page.dart';

class UserOld extends StatelessWidget {

  const UserOld({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const ROUTE_NAME = '/user';
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        height: 20,
        child: Row(
          children: <Widget>[
            const Text(
              'Have we met before?',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
            // ignore: deprecated_member_use
            FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}