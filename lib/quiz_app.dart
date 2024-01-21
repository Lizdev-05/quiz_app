import 'package:flutter/material.dart';
import 'package:quiz_app/login.dart';
import 'package:quiz_app/quiz_page.dart';
import 'package:quiz_app/splash_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var activeScreen = "splash-screen";

  void switchScreen(String screenName) {
    setState(() {
      activeScreen = screenName;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;

    switch (activeScreen) {
      case "splash-screen":
        screenWidget = SplashScreen(switchScreen);
        break;
      case "login-screen":
        screenWidget = LoginPage(switchScreen);
        break;
      case "question-screen":
        screenWidget = const QuizPage();
        break;
      default:
        screenWidget = SplashScreen(switchScreen);
    }
    return screenWidget;
  }
}
