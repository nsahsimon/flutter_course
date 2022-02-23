import 'package:flutter/material.dart';

void main() {
  runApp(
      Myapp()
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'I am rich',
            ),
          ),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.pink,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/simon.jpg'),
            ),
              Text(
                'Nsah Simon',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              Text('flutter developer'),
              Container(
                child: Row(
                   Text('6 75709781'),
                  ),
                ),
              ),
          ]),
        ),
      ),
    );
  }
}

