import 'package:flutter/material.dart';
import 'package:bmi_cal/constants.dart';

class BottomButton extends StatelessWidget {


  final onTap;
  final String buttonTitle;

  BottomButton({required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(child: Text(buttonTitle, style: klargeButtonTextStyle,)),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}