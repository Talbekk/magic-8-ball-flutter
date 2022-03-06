import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade600,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int magicBallNumber = 1;

  int getRandomNumber() {
    return Random().nextInt(5) + 1;
  }

  void shakeBall() {
    setState(() {
      magicBallNumber = getRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                shakeBall();
              },
              child: Image.asset('images/ball$magicBallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
