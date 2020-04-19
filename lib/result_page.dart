import 'package:flutter/material.dart';
import 'constants.dart';
import 'widgets.dart';

class ResultsPage extends StatelessWidget {
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
                alignment: Alignment.center,
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActivCardbgColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'NORMAL',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kResultNumber,
                    ),
                    Text(
                        'Your BMI result is quite low, you have to eat more food',
                        textAlign: TextAlign.center,
                        style: kBodyText),
                  ],
                ),
              ),
              flex: 5,
            ),
            ButtomButton(
              text: 'RECALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
