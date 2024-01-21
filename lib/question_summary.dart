import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

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
                                    Text(
                                      (data['user_answer'] as String),
                                      style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                            255, 32, 31, 31),
                                      ),
                                    ),
                                    Text(
                                      (data['correct_answer'] as String),
                                      style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 24, 85, 30),
                                          fontWeight: FontWeight.bold),
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
