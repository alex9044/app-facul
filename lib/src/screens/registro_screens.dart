import 'package:app/src/widgets/app_button.dart';
import 'package:app/src/widgets/app_logo.dart';
import 'package:app/src/widgets/app_textfields.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppRegistro extends StatefulWidget {

  static const String routeName = '/registro';

  @override
  _AppRegistroState createState() => _AppRegistroState();
}

class _AppRegistroState extends State<AppRegistro> {

  String _email = "";
  String _password = "";

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppLogo(),
            SizedBox(
              height: 48.0,
            ),
            AppTextField(
              inputText: "Ingresar e-mail",
              obscureText: false,
              onchange: (value) {
                _email = value;
                print('Email $_email');
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            AppTextField(
              inputText: "Contraseña",
              obscureText: true,
              onchange: (value) {
                _password = value;
                print('Contrasena $_password');
              },
            ),
            SizedBox(
              height: 23.0,
            ),
            AppButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  try{
                    var newUser = auth.createUserWithEmailAndPassword(email: _email, password: _password);
                    if(newUser != null){
                      Navigator.pushNamed(context, '/home');
                    }
                  }catch(e){
                    print(e);
                  }
                },
                name: 'Registrar'),
          ]),
    ));
  }
}
