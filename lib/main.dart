import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('Rolle\'m',
          style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
          ),
          backgroundColor: Colors.white,
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
  int leftDice = 1;
  int rightDice = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(child:
            FlatButton(child: Image.asset('images/dice${leftDice}.png',),
              onPressed: () {
              setState(() {
                leftDice = rollDice();
                 rightDice = rollDice();
              });
              },
            ),
            ),
            Expanded(child:
            FlatButton(child: Image.asset('images/dice${rightDice}.png',),
              onPressed: () {
                setState(() {
                  leftDice = rollDice();
                  rightDice = rollDice();
                });
              },
            ),
            ),
          ]),
    );
  }
}


int rollDice(){
  var r = Random();
  return (r.nextInt(5) + 1 );
}