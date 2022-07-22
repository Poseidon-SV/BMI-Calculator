import 'package:flutter/material.dart';

// class AppCard extends StatelessWidget {   //as per video
// AppCard (this.L, this.T, this.R, this.B);
// int L;
// int T;
// int R;
// int B;
//   AppCard({required this.colour, required this.cardChild, required this.onPressed });
//
//   final Color colour;
//   final Widget cardChild;
//   final Function onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child:Container(
//         child: cardChild,
//         margin: EdgeInsets.all(8.0),
//         decoration: BoxDecoration(
//           color: colour,
//           borderRadius: BorderRadius.circular(10.0),
//
//         ),
//       ),
//     );
//   }
// }
class AppCard extends StatelessWidget {
  // AppCard (this.L, this.T, this.R, this.B);
  // int L;
  // int T;
  // int R;
  // int B;
  AppCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
