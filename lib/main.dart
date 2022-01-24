import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _nameState();
}

int LeftDicee = 1;
int RightDicee = 1;

class _nameState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  LeftDicee = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$LeftDicee.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  RightDicee = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$RightDicee.png'),
            ),
          ),
        ],
      ),
    );
  }
}
