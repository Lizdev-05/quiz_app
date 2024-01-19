import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 75, 1, 171),
            Color.fromARGB(255, 69, 0, 159)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(children: [
          Image.asset("images/quiz.jpeg"),
          Text(
            "Quiz",
            style: google,
          ),
          Text("Test your knowledge"),
          ElevatedButton(onPressed: () {}, child: Text("Get Started"))
        ]),
      ),
    );
  }
}
