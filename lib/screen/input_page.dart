import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../component/app_card.dart';
import '../component/card_content.dart';
import '../constant.dart';
import 'result_page.dart';
import 'package:bmi_calculator_app/calculator_brain.dart';

/// TO look app interactive make Cards in the app
///  Extract reusable Widget by going in 'Flutter Outline' and selecting the widget and Extract.
///  Use of Key constructor
///  Reusable card by making a class of it.
/// Final vs Const they are immutable
///
///     Const can't have access at runtime
///     const myConst = 3;
///     final myFinal = DateTime.now();
///
/// GestureDetector
/// Enums
/// Page navigator
/// Named Routes
///

enum Gender { male, female, none }

///Ternary Operator ro conditional operator   Syntactic Sugar
/// Flutter Slider
/// Slider
/// . Composition vs. Inheritance - Building Flutter Widgets From Scratch

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.none;

  /// Below Code replaced 😁 with the help of ternary operator and enum
// Color maleCardColor = inactiveCardColor;
// Color femaleCardColor = inactiveCardColor;
//
// void updateColor(Gender gender) {
//   if (gender == Gender.male && maleCardColor == inactiveCardColor){
//     maleCardColor = activeCardColor;
//     femaleCardColor = inactiveCardColor;
//   } else {
//     maleCardColor = inactiveCardColor;
//   }
//   if (gender == Gender.female && femaleCardColor == inactiveCardColor){
//     femaleCardColor = activeCardColor;
//     maleCardColor = inactiveCardColor;
//   } else {
//     femaleCardColor = inactiveCardColor;
//   }
// }

  int height = 180;
  int weight = 55;
  int age = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("BMI Calculator ⚖ "))),
      //📊
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // updateColor(Gender.male);
                        selectedGender =
                            Gender.male; // Make gender selection code small
                      });
                    },
                    child: AppCard(
//                    onPressed: () {  // as per video
//                       setState(() {
//                         // updateColor(Gender.male);
//                         selectedGender = Gender.male; // Make gender selection code small
//                       }

                        // colour: maleCardColor,
                        colour: selectedGender == Gender.male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: CardContent("MALE", FontAwesomeIcons.mars)),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // updateColor(Gender.female);
                        selectedGender =
                            Gender.female; // Make gender selection code small
                      });
                    },
                    child: AppCard(

                        // colour: femaleCardColor, // Using ternary operator
                        colour: selectedGender == Gender.female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild:
                            CardContent("FEMALE", FontAwesomeIcons.venus)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: AppCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 5),
                  Text(
                    "HEIGHT",
                    style: kCardTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kCardTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    /// Theme can be possible in any Widget
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0x878D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x45EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 23.0),
                      trackHeight: 3,
                    ),
                    child: Slider(
                      ///Slider
                      value: height.toDouble(),
                      max: 250.00,
                      min: 100.00,
                      // activeColor: Color(0xFFEB1555),
                      // inactiveColor: Color(0xFF8B8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: AppCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kCardTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                // color: Colors.white
                              ),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              elevation: 25.0,
                              constraints: BoxConstraints.tightFor(
                                  width: 60, height: 55),
                              shape: CircleBorder(),
                              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 17,
                            ),

                            /// RoundIconButton(  It's Not Working... Nevermind
                            //   icon: FontAwesomeIcons.plus,
                            //   onPressed: () {
                            //     setState(() {
                            //       weight ++;
                            //     });
                            //   },
                            // ),
                            RawMaterialButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                // color: Colors.white
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              elevation: 25.0,
                              constraints: BoxConstraints.tightFor(
                                  width: 60, height: 55),
                              shape: CircleBorder(),
                              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: AppCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kCardTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                              ),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              elevation: 25.0,
                              constraints: BoxConstraints.tightFor(
                                  width: 60, height: 55),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 17,
                            ),
                            RawMaterialButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                              ),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              elevation: 25.0,
                              constraints: BoxConstraints.tightFor(
                                  width: 60, height: 55),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain clac =
                  CalculatorBrain(weight: weight, height: height, age: age);

              /// Navigator.pushNamed(context, '/result_page'); Don't need cuz we have only one page to navigate so instead>>
              Navigator.push(
                  context,

                  /// We will use this :)
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResult: clac.calculateBMI(),
                            resultText: clac.getResult(),
                            resultComment: clac.getComment(),
                          )));
            },
            child: Container(
              child: Center(
                  child: Text(
                "CALCULATE",
                style: kBottomContainerTextStyle,
              )),
              padding: EdgeInsets.only(bottom: 10.0),
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

// Container(
// margin: EdgeInsets.all(12.0),
// height: 200,
// width: 170,
// decoration: BoxDecoration(
// color: activeCardColor,
// borderRadius: BorderRadius.circular(10.0),
// ),
// )

// Expanded(
//   child: Container(
//     margin: EdgeInsets.all(12.0),
//     decoration: BoxDecoration(
//       color: activeCardColor,
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//   ),
// )

// Expanded(
//   child: Container(
//     margin: EdgeInsets.fromLTRB(12.0, 10, 12.0, 10),
//     decoration: BoxDecoration(
//       color: activeCardColor,
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//   ),
// ),

/// class RoundIconButton extends StatelessWidget {  It's Not Working... Nevermind
//   // final Widget child;
//   //
//   // RoundIconButton({required this.child})
//
//   RoundIconButton({required this.icon, required this.onPressed});
//
//   final IconData icon;
//   final Function onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       child: Icon(
//         icon,
//         // color: Colors.white
//       ),
//       onPressed: onPressed(),
//       elevation: 25.0,
//       constraints: BoxConstraints.tightFor(width: 50, height: 55),
//       shape: CircleBorder(),
//       // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//       fillColor: Color(0xFF4C4F5E),
//     );
//   }
// }
