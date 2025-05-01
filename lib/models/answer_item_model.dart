import 'package:flutter/material.dart';

class AnswerItemModel {
  AnswerItemModel({
    required this.answer,
    required this.onPressed,
    this.isTrue = false,
  });
  final bool isTrue;
  final String answer;
  final VoidCallback onPressed;
}

// final List<AnswerItemModel> answerForFirstQuestion = [
//   AnswerItemModel(
//       answer: "Football",
//       onPressed: () => debugPrint("Football"),
//       isTrue: true),
//   AnswerItemModel(
//       answer: "Volleyball", onPressed: () => debugPrint("Volleyball")),
//   AnswerItemModel(
//       answer: "BasketBall", onPressed: () => debugPrint("BasketBall")),
//   AnswerItemModel(answer: "Tenis", onPressed: () => debugPrint("Tenis")),
// ];
