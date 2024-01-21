import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Center(
                            child: SingleChildScrollView(
                              child: Text(
                                currentQuestion.text,
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 32, 31, 31),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(
                          Icons.format_quote,
                          color: Color.fromARGB(255, 130, 30, 160),
                          size: 34,
                        ),
                      ),
                      const Positioned(
                        bottom: 8,
                        right: 8,
                        child: Icon(
                          Icons.format_quote,
                          color: Color.fromARGB(255, 130, 30, 160),
                          size: 34,
                        ),
                      ),
                    ],
                  ),
                ),
                // I use ... to convert the list to individual values since the column list is expecting widget and not list
                ...currentQuestion.getShuffledAnswer().map(
                  (answer) {
                    return AnswerButton(answer, () {
                      answerQuestion(answer);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
