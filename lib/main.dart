import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magic8BallApp());
}

class Magic8BallApp extends StatefulWidget {
  const Magic8BallApp({super.key});

  @override
  State<Magic8BallApp> createState() => _Magic8BallAppState();
}

class _Magic8BallAppState extends State<Magic8BallApp> {

  int imageNumber = 1;

  void changeImage() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anything', style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: TextButton(
            onPressed: () => changeImage(),
            child: Image.asset('images/ball$imageNumber.png'),
          )
        ),
      ),
    );
  }
}
