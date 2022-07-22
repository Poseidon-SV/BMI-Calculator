import 'package:flutter/material.dart';
// import 'input_page_reverted.dart';
import 'screen/input_page.dart';
import 'screen/result_page.dart';
///https://docs.flutter.dev/cookbook CookBook to know more about flutter things
///https://dribbble.com/shots/popular/mobile To see app themes

/// AppTheme Theme DATA important we can change any widgets theme by just wrapping it in a theme widget
/// Every subsequent sceen has it's own dart file
/// TO look app interactive make Cards in the app
///  Extract reusable Widget by going in 'Flutter Outline' and selecting the widget and Extract.
///  Use of Key constructor
///  Page navigator
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // primaryColor: Color.fromARGB(255, 13, 17, 23),
        // floatingActionButtonTheme: FloatingActionButtonThemeData(
        //     splashColor: Colors.white.withOpacity(0.55),
        //     backgroundColor: Colors.deepOrange),
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 13, 17, 23)),
        scaffoldBackgroundColor: Color.fromARGB(255, 15, 16, 28),
        // accentColor: Colors.purple, Not working here
      ),
      // theme: ThemeData(
      //   primaryColor: Color.fromARGB(255, 13, 17, 23),
      //   scaffoldBackgroundColor: Color.fromARGB(255, 15, 16, 32),
      //   accentColor: Colors.purple,
      //   textTheme: TextTheme(
      //     bodyText1: TextStyle(color: Colors.white),
      //   ),
      // ),
      home: InputPage(),
      /// routes: { Don't need cuz we have only one page to navigate
      //   '/result_page': (context) => ResultPage(),
      // },
    );
  }
}
