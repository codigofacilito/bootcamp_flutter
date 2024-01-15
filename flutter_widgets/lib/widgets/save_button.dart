import 'package:flutter/material.dart';

class SaveButton extends StatefulWidget {

  //El metodo createState() se encarga de llamar la clase estado SaveButtonState para
  //actualizar el diseño 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SaveButtonState();
  }
}

class SaveButtonState extends State<SaveButton> {
  bool isSave = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton.icon(
        style: TextButton.styleFrom(
            foregroundColor: Colors.green, iconColor: Colors.green),
        onPressed: () {
          //Con setState nosotros actualizamos el diseño
          setState(() {
            isSave = !isSave;
          });
        },
        icon: Icon(isSave ? Icons.edit : Icons.save),
        label: Text(isSave ? "Editar" : "Guardar"));
  }
}
