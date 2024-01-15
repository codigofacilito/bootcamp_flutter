import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/texts_example.dart';

import '../widgets/buttons_example.dart';
import '../widgets/icon_example.dart';
import '../widgets/images_example.dart';
import '../widgets/save_button.dart';
import '../widgets/terms_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Para crear una ventana en Flutter usamos Scaffold
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
//Stack + Align nos permite  posicionar un widgets topRight,topLeft,topCenter,center,
//centerLeft,centerRight, center,bottomLeft,bottomRight y bottomCenter
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/color_bar2.png",
                height: 180,
                width: 110,
              )),
//Stack + Positioned nos permite  posicionar un widgets en donde deseemos asignando un valor
          Positioned(
              top: 200,
              left: -13,
              child: Image.asset(
                "assets/images/color_bar.png",
                height: 200,
                width: 100,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextsExample(),
              IconExample(),
              ImagesExample(),
              ButtonsExample(),
              TermsText(),
              SaveButton()
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
