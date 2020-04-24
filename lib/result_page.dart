import 'package:flutter/material.dart';
import 'constants.dart';
import 'widgets.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
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
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ReusableCard(
                  colour: kActivCardbgColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kResultNumber,
                      ),
                      Column(children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Normal BMI range:',
                              style: klabelTextStyle,
                            )),
                        Text(
                          '18.5 - 25 kg/m2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      Text(interpretation,
                          textAlign: TextAlign.center, style: kBodyText),
                    ],
                  ),
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
