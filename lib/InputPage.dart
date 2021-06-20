import 'package:bmi_cal/BmiCalculation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Components/Cards.dart';
import 'IconContent.dart';
import 'constants.dart';
import 'ResultPAge.dart';
import 'Components/Bottom_Button.dart';
import 'package:bmi_cal/Components/RoundButton.dart';



//enums
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender; // due to non nullable value.
  int height = 180;
  int weight = 74;
  int age=18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Row(children: <Widget>[
                  Expanded(
                    child: Cards(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: Cards(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ]),
              ),
              Expanded(
                flex: 2,
                child: Cards(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Height',
                        style: klabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: knumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: klabelTextStyle,
                          )
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF4C4F5E),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          })
                    ],
                  ),
                  colour: kactiveCardColor,
                ),
              ),
              Expanded(
                flex: 2,
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: Cards(
                      cardChild: Column(
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: klabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: knumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButton(icon: FontAwesomeIcons.plus, onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },),
                              SizedBox(width: 10.0,),
                              RoundButton(icon: FontAwesomeIcons.minus, onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },)

                            ],
                          ),


                        ],
                      ),
                      colour: kactiveCardColor,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Cards(
                      cardChild: Column(
                        children: <Widget>[
                          Text(
                            'Age',
                            style: klabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: knumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButton(icon: FontAwesomeIcons.plus, onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },),
                              SizedBox(width: 10.0,),
                              RoundButton(icon: FontAwesomeIcons.minus, onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },)

                            ],
                          ),


                        ],
                      ),
                      colour: kactiveCardColor,
                    ),
                  ),
                ],
              )),
              Expanded(flex: 1,
                child: BottomButton(onTap: (){
                  BmiCalculation cal = BmiCalculation(height,weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(
                      bmiResults: cal.calculateBMI(),
                      resultText: cal.getResult(),
                      resultInterpretation: cal.getInterpretaion(),

                    );
                  }));
                },buttonTitle: 'CALCULATE',),
              )
            ],),);
  }
}



