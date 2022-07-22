import 'package:flutter/material.dart';
import '../constant.dart';
import '../component/app_card.dart';

class ResultPage extends StatelessWidget {

  late String bmiResult;
  late String resultText;
  late String resultComment;

  ResultPage({required this.bmiResult, required this.resultText, required this.resultComment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator ⚖"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left:25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kResultPageTextStyle,
                // textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: AppCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    resultComment,
                    textAlign: TextAlign.center,
                    style: kResultCommentTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {/// Navigator.pushNamed(context, '/result_page'); Don't need cuz we have only one page to navigate so instead>>
              Navigator.pop(
                  context) ;},
            child: Container(
              child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: kBottomContainerTextStyle,
                  )),
              padding: EdgeInsets.only(bottom:10.0),
              margin: EdgeInsets.only(top: 7),
              // width: double.infinity,
              height: kBottomContainerHeight,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
