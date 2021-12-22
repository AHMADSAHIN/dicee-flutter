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
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // automatically resize wrt screen
            //flex: 2,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  //rightDiceNumber = Random().nextInt(6) + 1;
                });
                print('Left button got pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            // automatically resize wrt screen
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  //leftDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
                print('Right button pressed');
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DicePage1 extends StatelessWidget {
  int leftDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            // automatically resize wrt screen
            //flex: 2,
            child: FlatButton(
              onPressed: () {
                print('Left button got pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            // automatically resize wrt screen
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Right button pressed');
              },
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.orange,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);
  int leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                leftDiceNumber=3;
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('right button got  pressed');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
*/
