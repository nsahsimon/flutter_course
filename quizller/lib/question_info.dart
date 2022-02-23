import 'package:flutter/material.dart';

class QuestionInfo {
  String question;
  bool answer;

  QuestionInfo(this.question,this.answer);

  String getQuestion() {
    return question;
  }

  bool getCorrectAnswer(){
    return answer;
  }
}


List<QuestionInfo> questionsAndAnswers= [
  QuestionInfo('The Richest man in the world is Elon Musk', true),
  QuestionInfo('The moon produces light of its own', false),
  QuestionInfo('Dart is a good programing language', true),
  QuestionInfo('the sun is at the center of our galaxy', true),
  QuestionInfo('poor hygienic conditions can lead to cholera', true),
  QuestionInfo('all cats are white', false),
  QuestionInfo('Cameroon is a fake country ', true),
  QuestionInfo('the square root of 4 is only +2', false)
];