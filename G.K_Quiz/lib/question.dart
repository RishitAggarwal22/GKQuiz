import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(
    this.questionText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 18,
          color: Colors.blueAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
