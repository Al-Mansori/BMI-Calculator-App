import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/container_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String stateOfWeight;
  String resultMessage;
  String resultNumber;

  Color setColor(String state) {
    if (stateOfWeight == 'Underweight') {
      return Colors.blue;
    } else if (stateOfWeight == 'Normal') {
      return Colors.green;
    }
    return Colors.red;
  }

  ResultPage(
      {super.key,
      required this.resultMessage,
      required this.resultNumber,
      required this.stateOfWeight});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    stateOfWeight.toUpperCase(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: setColor(stateOfWeight),
                    ),
                  ),
                  Text(
                    resultNumber,
                    style: kNumberTextStyle,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    resultMessage,
                    style: kResultMessageTextStyle,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomContainerColor,
                padding: const EdgeInsets.only(bottom: 20),
                margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                child: const Center(
                  child: Icon(
                    Icons.arrow_back,
                    size: 50,
                  ),
                ),
              ),
              // height: bottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
