import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/login.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/splash_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var activeScreen = "splash-screen";

  List<String> selectedAnswer = [];

  void switchScreen(String screenName) {
    setState(() {
      activeScreen = screenName;
    });
  }

  void chosenAswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = "splash-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
//     Widget screenWidget;

// if (activeScreen == "splash-screen") {
//   screenWidget = SplashScreen(switchScreen);
// } else if (activeScreen == "login-screen") {
//   screenWidget = LoginPage(switchScreen);
// } else if (activeScreen == "question-screen") {
//   screenWidget = const QuizPage();
// } else {
//   screenWidget = SplashScreen(switchScreen);
// }
    Widget screenWidget;

    switch (activeScreen) {
      case "splash-screen":
        screenWidget = SplashScreen(switchScreen);
        break;
      case "login-screen":
        screenWidget = LoginPage(switchScreen);
        break;
      case "question-screen":
        screenWidget = QuestionsScreen(onSelectAnswer: chosenAswer);
        break;
      default:
        screenWidget = SplashScreen(switchScreen);
    }

    // return screenWidget;

    return const ResultScreen();
  }
}
