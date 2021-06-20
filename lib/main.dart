import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0D0F1E),
        scaffoldBackgroundColor: Color(0xFF0D0F1E),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white)
        )

      ),
      home: InputPage(),
    );
  }
}






