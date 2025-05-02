import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  const TotalScorePart(
      {super.key,
      required this.totalScore,
      required this.highScore,
      required this.onPressed});
  final int totalScore;
  final int highScore;
  final VoidCallback onPressed;
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
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black54),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadowColor: Colors.transparent,
              ),
              child: const Text(
                "Restart",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
