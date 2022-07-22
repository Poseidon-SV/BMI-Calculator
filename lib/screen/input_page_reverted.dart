import 'package:flutter/material.dart';

const bottomContainerHeight = 50.0;
const Color activeCardColor = Color.fromARGB(255, 25, 26, 38); // Bhut baar used hn to const bna diya

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
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator")),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                AppCard(activeCardColor),
                AppCard(activeCardColor),
              ],
            ),
          ),
          AppCard(activeCardColor),
          Expanded(
            child: Row(
              children: <Widget>[
                AppCard(activeCardColor),
                AppCard(activeCardColor),
              ],
            ),
          ),Container(
            margin: EdgeInsets.only(top:7),
            // width: double.infinity,
            height: bottomContainerHeight,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class AppCard extends StatelessWidget {
  // AppCard (this.L, this.T, this.R, this.B);
  // int L;
  // int T;
  // int R;
  // int B;
  AppCard(this.colour);

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
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
