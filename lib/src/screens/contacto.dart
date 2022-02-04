import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  const Contacto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        backgroundColor: Color((0xfff01dfd7)),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Form(
          key: key,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: 500,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Color((0xfff01dfd7)),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(80),
                          bottomLeft: Radius.circular(80))),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: new Image(
                          width: 200.0,
                          height: 150,
                          image: new AssetImage('images/scale.png'),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 5)
                          ],
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Digite el peso kg';
                            }
                          },
                          decoration: InputDecoration(
                            hintText: 'Peso kg',
                            icon: Icon(Icons.account_balance_wallet,
                                color: Colors.purpleAccent),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Divider(),
                      Container(
                        width: 150,
                        height: 50,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 5)
                          ],
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Digite estatura cm';
                            }
                          },
                          decoration: InputDecoration(
                            hintText: 'Estatura cm',
                            icon: Icon(Icons.present_to_all,
                                color: Colors.purpleAccent),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Divider(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(Icons.person, color: Colors.pink),
                                  Text('Mujer',
                                      style: TextStyle(color: Colors.pink))
                                ],
                              )),
                          VerticalDivider(),
                          TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(Icons.person, color: Colors.blueAccent),
                                  Text('Hombre',
                                      style:
                                          TextStyle(color: Colors.blueAccent))
                                ],
                              )),
                        ],
                      ),
                      Divider(
                        height: 30.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 300,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xfffe2e64),
                              Color(0xffff781d8)
                            ]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Divider(
                        height: 30.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 300,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xfff04b4ae),
                              Color(0xfff81f7f3)
                            ]),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                ),
                new Container(
                  padding: EdgeInsets.all(2.0),
                  child: Stack(
                    children: [
                      Align(
                        child: new Image(
                          width: 300.0,
                          height: 200.0,
                          image: new AssetImage('images/imcx.png'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
