import 'dart:math';

import 'package:cara_ou_coroa/resultpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showResult() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(_generateCoinResult()),
        ));
  }

  int _generateCoinResult() => Random().nextInt(2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF61BD86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/logo.png'),
            GestureDetector(
              child: Image.asset('images/botao_jogar.png'),
              onTap: _showResult,
            ),
          ],
        ),
      ),
    );
  }
}
