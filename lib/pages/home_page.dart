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
  int currentSelectedIndex = -1;
  int highScore = questions.length * 10;
  bool isFinished = false;
  bool currentQuestionIsTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !isFinished
          ? SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  QuestionItem(
                    question: questions[currentQuestionIndex],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: Text(
                      "Answer the questions",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.black54),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      questions[currentQuestionIndex].aveliableAnswer.length,
                      (index) => AnswerItem(
                        answerItemModel: questions[currentQuestionIndex]
                            .aveliableAnswer[index],
                        setStateForQusestionIndex: () {
                          setState(
                            () {
                              currentSelectedIndex = index;
                              currentQuestionIsTrue =
                                  questions[currentQuestionIndex]
                                      .aveliableAnswer[index]
                                      .isTrue;
                            },
                          );
                        },
                        isSelected: currentSelectedIndex == index,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (currentQuestionIsTrue) {
                            totalScore += 10;
                          }
                          setState(() {
                            if (currentQuestionIndex < questions.length - 1) {
                              currentQuestionIndex++;
                            } else {
                              debugPrint("End of the quiz");
                              isFinished = true;
                              currentQuestionIsTrue = false;
                            }
                            currentSelectedIndex = -1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          : TotalScorePart(
              onPressed: () {
                setState(() {
                  currentQuestionIndex = 0;
                  totalScore = 0;
                  isFinished = false;
                });
              },
              highScore: highScore,
              totalScore: totalScore,
            ),
    );
  }
}
