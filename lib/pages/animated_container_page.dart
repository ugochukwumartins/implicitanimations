import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(16);
  final radomDisplay = Random();
  void _radomDisplay() {
    setState(() {
      _width = radomDisplay.nextInt(300).toDouble();
      _height = radomDisplay.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        radomDisplay.nextInt(256),
        radomDisplay.nextInt(256),
        radomDisplay.nextInt(256),
        1,
      );
      _borderRadius = BorderRadius.circular(
        radomDisplay.nextInt(100).toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          // Use the properties stored in the State class.
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _radomDisplay,
        child: Icon(
          Icons.play_arrow,
        ),
      ),
    );
  }
}
