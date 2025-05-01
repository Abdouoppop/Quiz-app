import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class QuestionItemModel {
  QuestionItemModel({
    required this.aveliableAnswer,
    required this.title,
  });
  final List<AnswerItemModel> aveliableAnswer;
  final String title;
}

final List<QuestionItemModel> questions = [
  QuestionItemModel(
      title: "What is your favorite sport?",
      aveliableAnswer: <AnswerItemModel>[
        AnswerItemModel(
            answer: "Football",
            onPressed: () => debugPrint("Football"),
            isTrue: true),
        AnswerItemModel(
            answer: "Volleyball", onPressed: () => debugPrint("Volleyball")),
        AnswerItemModel(
            answer: "BasketBall", onPressed: () => debugPrint("BasketBall")),
        AnswerItemModel(answer: "Tenis", onPressed: () => debugPrint("Tenis")),
      ]),
  QuestionItemModel(
      title: "What is your favorite color?",
      aveliableAnswer: <AnswerItemModel>[
        AnswerItemModel(
            answer: "white",
            onPressed: () => debugPrint("white"),
            isTrue: true),
        AnswerItemModel(answer: "red", onPressed: () => debugPrint("red")),
        AnswerItemModel(answer: "green", onPressed: () => debugPrint("green")),
        AnswerItemModel(answer: "black", onPressed: () => debugPrint("black")),
      ]),
  QuestionItemModel(
      title: "What is your favorite food?",
      aveliableAnswer: <AnswerItemModel>[
        AnswerItemModel(answer: "fish", onPressed: () => debugPrint("fish")),
        AnswerItemModel(
            answer: "meat", onPressed: () => debugPrint("meat"), isTrue: true),
        AnswerItemModel(answer: "rice", onPressed: () => debugPrint("rice")),
        AnswerItemModel(
            answer: "spaghetti", onPressed: () => debugPrint("spaghetti")),
      ]),
  QuestionItemModel(
      title: "What is your favorite movie?",
      aveliableAnswer: <AnswerItemModel>[
        AnswerItemModel(
            answer: "spiderman", onPressed: () => debugPrint("spiderman")),
        AnswerItemModel(answer: "hulk", onPressed: () => debugPrint("hulk")),
        AnswerItemModel(answer: "thor", onPressed: () => debugPrint("thor")),
        AnswerItemModel(
            answer: "1917", onPressed: () => debugPrint("1917"), isTrue: true),
      ]),
];
