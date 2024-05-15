import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageGenerator(title: 'Image Generator'),
    );
  }
}

class ImageGenerator extends StatefulWidget {
  const ImageGenerator({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ImageGeneratorState createState() => _ImageGeneratorState();
}

class _ImageGeneratorState extends State<ImageGenerator> {
  Color _backgroundColor = Colors.white;

  void _generateImage() {
    setState(() {
      _backgroundColor = _getRandomColor();
    });
  }

  Color _getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: _backgroundColor,
          child: const Center(
            child: Text(
              'Tap to Generate',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateImage,
        tooltip: 'Generate',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
