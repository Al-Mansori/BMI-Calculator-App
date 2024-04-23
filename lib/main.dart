import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
              backgroundColor: const Color(0xFF0A0E21),
            ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        // textTheme: const TextTheme(
        //   bodyMedium:
        //       TextStyle(backgroundColor: Color.fromARGB(0, 76, 175, 79), color: Colors.red),
        // ),
      ),
      home: const InputPage(),
    );
  }
}
