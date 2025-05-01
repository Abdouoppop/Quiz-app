import 'package:flutter/material.dart';

import 'package:quiz_app/widgets/answer_item.dart';
import 'package:quiz_app/widgets/question_item.dart';

import '../models/question_item_model.dart';
import '../widgets/total_score_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentQuestionIndex = 0;
  int totalScore = 0;
  int highScore = questions.length * 10;
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    debugPrint(totalScore.toString());

    debugPrint(currentQuestionIndex.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                currentQuestionIndex = 0;
                totalScore = 0;
                isFinished = false;
              });
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: !isFinished
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuestionItem(
                  question: questions[currentQuestionIndex],
                ),
                Column(
                  children: questions[currentQuestionIndex]
                      .aveliableAnswer
                      .map(
                        (question) => AnswerItem(
                          answerItemModel: question,
                          setStateForQusestionIndex: () {
                            setState(() {
                              if (question.isTrue) {
                                totalScore += 10;
                              }
                            });
                            setState(() {
                              if (currentQuestionIndex < questions.length - 1) {
                                currentQuestionIndex++;
                              } else {
                                debugPrint("End of the quiz");
                                isFinished = true;
                              }
                            });
                          },
                        ),
                      )
                      .toList(),
                )
              ],
            )
          : TotalScorePart(
              highScore: highScore,
              totalScore: totalScore,
            ),
    );
  }
}
