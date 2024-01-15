import 'package:flutter/material.dart';

class ImagesExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network(
          "https://codigofacilito.com/avatar.jpg",
          height: 100,
          width: 100,),
//Imagen local recuerden la ruta se debe de dar alta en pubspec.yaml
        Image.asset(
          "assets/images/cody_dev.png",
          height: 100,
          width: 100,)
    ],);
  }

}