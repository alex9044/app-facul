import 'package:flutter/material.dart';

class TerceraPantalla extends StatelessWidget {
  const TerceraPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            Icons.home,
            size: 170.0,
            color: Colors.green,
          ),
          Text("Tab 3")
        ],
      ),
    );
  }
}