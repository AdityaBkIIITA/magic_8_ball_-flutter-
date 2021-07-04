import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('ASK ME ANYTHING'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: magicball(),
        backgroundColor: Colors.blue.shade200,
      )),
    );

class magicball extends StatefulWidget {
  const magicball({Key key}) : super(key: key);

  @override
  _magicballState createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int Number = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          setState(() {
            Number = Random().nextInt(5) + 1;
          });
        },
        child: Center(
          child: Image.asset(
            'images/ball$Number.png',
          ),
        ));
  }
}
