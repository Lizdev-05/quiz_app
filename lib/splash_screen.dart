import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.switchScreen, {super.key});

  final Function switchScreen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 75, 1, 171),
            Color.fromARGB(255, 69, 0, 159)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "images/quizz.png",
              width: 350,
            ),
            const SizedBox(height: 50),
            Text(
              "Quiz",
              style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              "Test your knowledge",
              style: GoogleFonts.roboto(
                decoration: TextDecoration.none,
                color: const Color.fromARGB(255, 208, 199, 199),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(8),
              child: Container(
                // padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                width: 180,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 130, 30, 160),
                    Color.fromARGB(255, 176, 91, 21)
                  ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
                ),
                child: TextButton(
                  onPressed: () => switchScreen("login-screen"),
                  child: Text(
                    "Get Started",
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
