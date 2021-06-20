import 'package:flutter/material.dart';
import 'constants.dart';
import 'Components/Cards.dart';
import 'Components/Bottom_Button.dart';

class ResultPage extends StatelessWidget {


  final bmiResults;
  final resultText;
  final resultInterpretation;

  ResultPage({required this.bmiResults, required this.resultText, required this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Result',
              style: ktitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: Cards(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Text(bmiResults),
                  Text(
                    resultInterpretation,
                    style: kbmiText,
                    textAlign: TextAlign.center,
                  ),
                  BottomButton(
                    onTap: () {
                      Navigator.pop(context);
                      },
                    buttonTitle: 'RE-CALCULATE',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
