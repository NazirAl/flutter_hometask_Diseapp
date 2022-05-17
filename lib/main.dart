import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dice App',
      home: DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int LeftDiceFace = 2;
  int RightDiceFace = 6;

  void baskandaOzgort() {
    Random random = Random();
    LeftDiceFace = random.nextInt(6) + 1;
    RightDiceFace = random.nextInt(6) + 1;

    setState(() {});
    print("random. LeftDiceFace ===> $LeftDiceFace");
    print("random. RightDiceFace ===> $RightDiceFace");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF5353),
      appBar: AppBar(
        backgroundColor: Color(0xffFF5353),
        elevation: 0.0,
        title: Center(
          child: Text(
            'Тапшырма -05'.toUpperCase(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: baskandaOzgort,
                  child: Image.asset('images/Dice$LeftDiceFace.png'),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: baskandaOzgort,
                  child: Image.asset('images/Dice$RightDiceFace.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
