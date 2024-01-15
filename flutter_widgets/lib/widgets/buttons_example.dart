import 'package:flutter/material.dart';

class ButtonsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, foregroundColor: Colors.white),
          child: const Text("Guardar"),
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.green,
            side: const BorderSide(width: 2, color: Colors.green),
          ),
          child: const Text("Guardar"),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(foregroundColor: Colors.green),
          child: const Text("Guardar"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: TextButton.styleFrom(
              foregroundColor: Colors.green, iconColor: Colors.black),
          icon: const Icon(Icons.save),
          label: const Text("Guardar"),
        )
      ],
    );
  }
}
