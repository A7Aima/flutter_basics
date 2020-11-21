import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuestion;
  final int resultScore;

  Result({
    @required this.resultScore,
    @required this.resetQuestion,
  });

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeable!";
    } else if (resultScore <= 19) {
      resultText = "You are ....strange!";
    } else {
      resultText = "You are so bad !!!!!!!!!!!";
    }
    return resultText;
  }

  Color get resultColor {
    Color resultColor;
    if (resultScore <= 8) {
      resultColor = Colors.pink[300];
    } else if (resultScore <= 12) {
      resultColor = Colors.purple;
    } else if (resultScore <= 19) {
      resultColor = Colors.green;
    } else {
      resultColor = Colors.red[800];
    }
    return resultColor;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              color: resultColor,
            ),
          ),
          FlatButton(
            onPressed: resetQuestion,
            child: Text("Reset"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
