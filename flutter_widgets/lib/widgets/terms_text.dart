import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: "Al registrarte aceptas los ",
          style: const TextStyle(color: Colors.black),
          children: [
            TextSpan(
                text: "términos",
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('Ir a los términos');
                  }),
            const TextSpan(
              text: " y el ",
            ),
            TextSpan(
                text: "aviso de privacidad.",
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('aviso de privacidad');
                  }),
          ]),
    );
  }
}
