import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  const AnswerItem({
    super.key,
    required this.answerItemModel,
    required this.setStateForQusestionIndex,
    required this.isSelected,
  });
  final VoidCallback setStateForQusestionIndex;
  final AnswerItemModel answerItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected ? Colors.blue : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: isSelected ? Colors.white : Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          onPressed: () {
            answerItemModel.onPressed();
            setStateForQusestionIndex();
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.add,
                    size: 30,
                    color: isSelected ? Colors.white : Colors.black87),
                const SizedBox(width: 16),
                Text(
                  answerItemModel.answer,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.white : Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
