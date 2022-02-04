import 'package:app/src/screens/home.dart';
import 'package:app/src/screens/login_screens.dart';
import 'package:app/src/screens/registro_screens.dart';
import 'package:app/src/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
    home: WelcomeScreen(),
    initialRoute: WelcomeScreen.routeName,
    routes: <String, WidgetBuilder>{
      LoginScreen.routeName: (BuildContext context) => LoginScreen(),
      AppRegistro.routeName: (BuildContext context) => AppRegistro(),
      Home.routeName: (BuildContext context) => Home()
    },
  ));
}
