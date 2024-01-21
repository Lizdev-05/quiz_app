import 'package:flutter/material.dart';
import 'package:quiz_app/login.dart';
import 'package:quiz_app/questions_screen.dart';
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
        screenWidget = const QuestionsScreen();
        break;
      default:
        screenWidget = SplashScreen(switchScreen);
    }

    return screenWidget;
  }
}
