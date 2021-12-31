import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pase08/common/network_service.dart';
import 'package:pase08/loginWidget/textLogin.dart';
import 'package:pase08/loginWidget/verticalText.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const ROUTE_NAME = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  void togglePasswordView() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  String username = "";
  String password1 = "";

  @override
  Widget build(BuildContext context) {
    final request = context.watch<NetworkService>();
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blueGrey, Colors.lightBlueAccent]),
          ),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(children: const <Widget>[
                    VerticalText(),
                    TextLogin(),
                  ]),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.lightBlueAccent,
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            username = value!;
                          });
                        },
                        onSaved: (String? value) {
                          setState(() {
                            username = value!;
                          });
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            password1 = value!;
                          });
                        },
                        onSaved: (String? value) {
                          setState(() {
                            password1 = value!;
                          });
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, right: 50, left: 200),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius:
                                10.0, // has the effect of softening the shadow
                            spreadRadius:
                                1.0, // has the effect of extending the shadow
                            offset: Offset(
                              5.0, // horizontal, move right 10
                              5.0, // vertical, move down 10
                            ),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          final response = await request.login(
                              "http://127.0.0.1:8000/users/loginflutter", {
                            'username': username,
                            'password': password1,
                          });
                          if (response['status']) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Successfully logged in!"),
                            ));

                            Navigator.pushNamed(context, "/homepage"); //context, UserOld().ROUTE_NAME);
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text("An error occured, please try again."),
                            ));
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'OK',
                              style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.lightBlueAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
