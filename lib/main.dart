import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AskMe(),
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Demande Moi'),
        ),
      ),
    );
  }
}

class AskMe extends StatefulWidget {
  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  Random random = new Random();
  int randomValue = 2;
  int min = 1, max = 5;
  void generateRandomValue() {
    setState(() {
      randomValue = min + random.nextInt(max - min);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () => generateRandomValue(),
            child: Image(
              image: AssetImage('images/ball$randomValue.png'),
            ),
          )),
    );
  }
}
