import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  // final isCorrectAnswer =
  //     summaryData["user_answer"] == summaryData["correct_answer"];

  bool isCorrectAnswer(Map<String, Object> data) {
    return data["user_answer"] == data["correct_answer"];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  // Text(
                  //   ((data['question_index'] as int) + 1).toString(),
                  //   style: GoogleFonts.roboto(
                  //     decoration: TextDecoration.none,
                  //     color: Color.fromARGB(255, 216, 169, 230),
                  //   ),
                  // ),
                  Expanded(
                    child: Stack(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(26.0),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Text(
                                      (data['question'] as String),
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          color: const Color.fromARGB(
                                              255, 75, 1, 171),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                12),
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            gradient: isCorrectAnswer(data)
                                                ? const LinearGradient(
                                                    colors: [
                                                        Color.fromARGB(
                                                            255, 5, 91, 33),
                                                        Color.fromARGB(
                                                            255, 44, 143, 71)
                                                      ],
                                                    begin: Alignment.bottomLeft,
                                                    end: Alignment.bottomRight)
                                                : const LinearGradient(
                                                    colors: [
                                                        Color.fromARGB(
                                                            255, 144, 30, 74),
                                                        Color.fromARGB(
                                                            255, 207, 48, 48)
                                                      ],
                                                    begin: Alignment.bottomLeft,
                                                    end: Alignment.bottomRight),
                                          ),
                                          child: Center(
                                            child: Text(
                                              (data['user_answer'] as String),
                                              style: GoogleFonts.roboto(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                12),
                                        child: Container(
                                          padding: const EdgeInsets.all(20),
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 5, 91, 33),
                                                  Color.fromARGB(
                                                      255, 44, 143, 71)
                                                ],
                                                begin: Alignment.bottomLeft,
                                                end: Alignment.bottomRight),
                                          ),
                                          child: Center(
                                            child: Text(
                                              (data['correct_answer']
                                                  as String),
                                              style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  color: const Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  fontWeight: FontWeight.bold),
                                            ),
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
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
