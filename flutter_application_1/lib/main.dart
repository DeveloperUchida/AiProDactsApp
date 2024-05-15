import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImageGeneretor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageGenerator(),
    );
  }
}

class ImageGenerator extends StatefulWidget {
  const ImageGenerator({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ImageGeneratorState createState() => _ImageGeneratorState();
}

class› ImageGeneratorState extends State<ImageGenerator> {
  Color _backGgroundColor = Colors.white;

  void _generateImage() {
    setState(() {
      _backGgroundColor = _getRandomColor();
    });
  }
  Color _getRandomColor(){
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,);
  }
  
}
