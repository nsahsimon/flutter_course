import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdicenumber = 4;
  int rightdicenumber = 5;

  void rolldice()
  {
    setState(() {
      leftdicenumber = 1 + Random().nextInt(6);
      rightdicenumber = 1 + Random().nextInt(6);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              rolldice();
            },
            child: Image.asset('images/dice$leftdicenumber.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              rolldice();
            },
            child: Image.asset('images/dice$rightdicenumber.png'),
          ),
        ),
      ]),
    );
  }
}
