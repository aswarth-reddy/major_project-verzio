import 'package:flutter/material.dart';

import 'package:major_project/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage1 extends StatefulWidget {
  const QuizPage1({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage1> {
  int i = 1;
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You have scored $i out of 10',
        ).show();

        quizBrain.reset();

        scoreKeeper = [];
        i = 1;
      } else {
        if (userPickedAnswer == correctAnswer) {
          i++;
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }

        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/back.jpg'), fit: BoxFit.cover),
              ),
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.grey[300],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(15.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'TRUE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                onPressed: () {
                  //The user picked true.
                  checkAnswer(true);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(15.0),
              child: MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'FALSE',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  checkAnswer(false);
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              children: scoreKeeper,
            ),
          )
        ],
      ),
    );
  }
}
