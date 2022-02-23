import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question_info.dart';
import 'constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionNumber = 0;
  bool userAnswer;
  List<Icon> iconsToDisplay = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    questionsAndAnswers[questionNumber].getQuestion(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  height: 80,
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      questionsAndAnswers[questionNumber].getCorrectAnswer() == true ? iconsToDisplay.add(correctIcon):iconsToDisplay.add(wrongIcon);
                      if(questionNumber < 7) questionNumber++;
                      else {
                           questionNumber = 0;
                           iconsToDisplay = [];
                         }
                    });
                  },
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  height: 80,
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      questionsAndAnswers[questionNumber].getCorrectAnswer() == false ? iconsToDisplay.add(correctIcon):iconsToDisplay.add(wrongIcon);
                      if(questionNumber < 7) questionNumber++;
                      else {
                        questionNumber = 0;
                        iconsToDisplay = [];
                      }
                    });
                  },
                  child: Text(
                    'False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 30.0,
                child: Row(
                  children: iconsToDisplay,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




