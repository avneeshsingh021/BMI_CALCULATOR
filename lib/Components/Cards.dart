import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Color colour;
  final Widget ? cardChild; // ? makes the statement null safety;
  final onPress;// functions can also be assigned to variable ;

  Cards({required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        height: 200.0,
        width: 170.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
