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
