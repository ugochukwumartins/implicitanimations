// ignore_for_file: unnecessary_statements

import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  @override
  createState() => AnimatedOpacityPageState();
}

class AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double opacitys=  1.0;
 void _toggleOpacity(){
setState(() {
  opacitys= opacitys== 0 ? 1.0: 0.0;
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacitys,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: 200),
            ),
            ElevatedButton(
              child: Text('Fade Logo'),
             
              onPressed:()=> _toggleOpacity(),
            ),
          ],
        ),
      ),
    );
  }
}
