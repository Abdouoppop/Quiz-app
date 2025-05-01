import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_item_model.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.question});
  final QuestionItemModel question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        question.title,
        style: TextStyle(
            fontSize: 26, fontWeight: FontWeight.w500, color: Colors.blue),
      ),
    );
  }
}
