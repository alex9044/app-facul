import 'package:app/src/widgets/app_button.dart';
import 'package:app/src/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppLogo(),
            SizedBox(
              height: 35.0,
            ),
            AppButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                name: 'Iniciar Secion'),
            AppButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/registro');
                },
                name: 'Registrar-se'),
          ],
        ),
      ),
    );
  }
}
