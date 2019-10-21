import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final int indexResult;
  final List<Widget> _coins = [
    Image.asset('images/moeda_cara.png'),
    Image.asset('images/moeda_coroa.png')
  ];

  ResultPage(this.indexResult);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF61BD86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _coins[indexResult],
            GestureDetector(
              child: Image.asset('images/botao_voltar.png'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
