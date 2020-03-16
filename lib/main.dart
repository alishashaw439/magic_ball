import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('ASK ME ANYTHING')),
            backgroundColor: Colors.blue[900],
          ),
          backgroundColor: Colors.blue[300],
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
