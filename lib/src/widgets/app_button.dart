import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final MaterialAccentColor color;
  final VoidCallback onPressed;
  final String name;

  const AppButton(
      {required this.color, required this.onPressed, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30),
        elevation: 5.0,
        child: SizedBox(
          //Manejar los espaciados
          height: 43.0,
          child: TextButton(
              onPressed: onPressed,
              child: Text(
                name,
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
