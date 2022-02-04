import 'package:app/src/widgets/app_button.dart';
import 'package:app/src/widgets/app_logo.dart';
import 'package:app/src/widgets/app_textfields.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  static const String routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
              },
            ),
            SizedBox(
              height: 23.0,
            ),
            TextButton(
                onPressed: () {
                  try{
                  var newUser = auth.signInWithEmailAndPassword(email: _email, password: _password);
                  if(newUser != null){
                  Navigator.pushNamed(context, '/home');
                  }
                  }catch(e){
                  print(e);
                  }
                  }, child: Text('Iniciar Secion', style: TextStyle(
                color: Colors.black
            ),)),
            AppButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  try{
                    var newUser = auth.signInWithEmailAndPassword(email: _email, password: _password);
                    if(newUser != null){
                      Navigator.pushNamed(context, '/home');
                    }
                  }catch(e){
                    print(e);
                  }
                },
                name: 'Iniciar Secion'),
          ]),
    ));
  }
}
