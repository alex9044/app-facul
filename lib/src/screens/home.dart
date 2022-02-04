import 'package:app/src/screens/contacto.dart';
import 'package:app/src/screens/segunda_pantalla.dart';
import 'package:app/src/screens/tercera_pantalla.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(/*
          appBar: AppBar(
            title: Text("Home"),
            backgroundColor: Colors.blueAccent,
            bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.contacts)),
                  Tab(icon: Icon(Icons.favorite))
                ]
            ),
          ),*/
          body: TabBarView(
              children: [
                Contacto(),
                SegundaPantalla(),
                TerceraPantalla()
              ]
          ),
          bottomNavigationBar: Material(
            color: Colors.blueAccent,
            child: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.contacts)),
                  Tab(icon: Icon(Icons.favorite))
                ]
            ),
          ),
        )
    );
  }
}
