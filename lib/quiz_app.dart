import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_page.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: QuizPage(),
      ),
    );
  }
}
