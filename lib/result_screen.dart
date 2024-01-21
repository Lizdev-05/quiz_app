import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].answers[0],
          "user_answer": chosenAnswer[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfTotalQuestions = questions.length;
    final numOfCorrectQuestions = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 75, 1, 171),
              Color.fromARGB(255, 69, 0, 159)
            ],
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You answer $numOfCorrectQuestions questions out of $numOfTotalQuestions correctly",
                    style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  QuestionSummary(
                    summaryData,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(12),
                    child: Container(
                      // padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                      // width: 180,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 130, 30, 160),
                              Color.fromARGB(255, 176, 91, 21)
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Restart quiz",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
