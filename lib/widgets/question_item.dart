import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_item_model.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.question});
  final QuestionItemModel question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        question.title,
        style: const TextStyle(
            fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black87),
      ),
    );
  }
}
