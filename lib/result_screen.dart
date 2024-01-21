import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You answer X questions out of Y correctly",
                      style: GoogleFonts.roboto(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Text(
                                      "Question one...",
                                      style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                            255, 32, 31, 31),
                                      ),
                                    ),
                                    Text(
                                      "Correct answer: correct answer...",
                                      style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                            255, 32, 31, 31),
                                      ),
                                    ),
                                    Text(
                                      "Your answer: Your answer..",
                                      style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                            255, 32, 31, 31),
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
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  "Question one...",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                                Text(
                                  "Correct answer: correct answer...",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                                Text(
                                  "Your answer: Your answer..",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  "Question one...",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                                Text(
                                  "Correct answer: correct answer...",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                                Text(
                                  "Your answer: Your answer..",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  "Question one...",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                                Text(
                                  "Correct answer: correct answer...",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                                Text(
                                  "Your answer: Your answer..",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
      ),
    );
  }
}
