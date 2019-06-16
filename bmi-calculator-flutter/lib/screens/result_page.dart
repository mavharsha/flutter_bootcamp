
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/card_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class ResultPage extends StatelessWidget {

  final String bmiState;
  final String bmi;
  final String bmiDescription;

  ResultPage({this.bmiState, this.bmi, this.bmiDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Center(
              child: Text('Your Result', style: titleLabelStyle,),
            ),
          ),
          Expanded(
            flex: 6,
            child: CardContainer(
              color: activeCardColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(child: Text(bmiState, style: resultTextStyle,)),
                  Center(child: Text(bmi, style: resultBMIStyle)),
                  Center(child: Text(bmiDescription, style: resultDescriptionStyle,
                  textAlign: TextAlign.center,)),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
