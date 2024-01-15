import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const Text(
          "Hola mundo",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        RichText(
          text: const TextSpan(
              text: "¿No tiene cuenta? ",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: "Registrarme",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ]),
        )
      ],
    );
  }
}
