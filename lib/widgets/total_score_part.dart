import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  const TotalScorePart(
      {super.key, required this.totalScore, required this.highScore});
  final int totalScore;
  final int highScore;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            totalScore >= highScore ~/ 2 ? "Congratulations" : "You lose",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color:
                    totalScore >= highScore ~/ 2 ? Colors.green : Colors.red),
          ),
          Text(
            "Your Score: $totalScore / $highScore",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 26, fontWeight: FontWeight.w500, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
