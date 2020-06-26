import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int quizScore;
  final Function restartQuiz;

  Result(
    this.quizScore,
    this.restartQuiz,
  );

  String get resultPhrase {
    String resultText = 'You did it!';
    if (quizScore > 4) {
      resultText = 'You are awesome! You scored full marks.  :)';
    } else if (quizScore > 3) {
      resultText = 'Well done! You got 4 correct.';
    } else if (quizScore > 2) {
      resultText = 'Well done! You got 3 correct.';
    } else if (quizScore > 1) {
      resultText = 'Try harder! You got only 2 correct.';
    } else if (quizScore > 0) {
      resultText = 'Try harder! You got only 1 correct.';
    } else {
      resultText =
          'You have to try hard and practise more!  You didn\'t get any question correct';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 23,
              color: Colors.teal,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart the Quiz!',
              style: TextStyle(
                fontSize: 23,
                backgroundColor: Colors.lime[50],
              ),
            ),
            textColor: Colors.blue,
            onPressed: restartQuiz,
          )
        ],
      ),
    );
  }
}
