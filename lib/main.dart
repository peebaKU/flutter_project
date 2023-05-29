import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Level1(),
    );
  }
}

class Level1 extends StatefulWidget {
  @override
  _Level1State createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  int counter = 0;
  void updateCouter(int newCounter) {
    setState(() {
      counter = newCounter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(counter.toString()), Level2(counter, updateCouter)],
      ),
    );
  }
}

class Level2 extends StatelessWidget {
  final int counter;
  final Function updateCouter;
  Level2(this.counter, this.updateCouter);
  @override
  Widget build(BuildContext context) {
    return Level3(counter, updateCouter);
  }
}

class Level3 extends StatelessWidget {
  final int counter;
  final Function updateCouter;
  Level3(this.counter, this.updateCouter);
  @override
  Widget build(BuildContext context) {
    int randomCounter = Random().nextInt(8) + 1;
    return Container(
        child: ElevatedButton(
      onPressed: () => {updateCouter(randomCounter + counter)},
      child: Text("set"),
    ));
  }
}
