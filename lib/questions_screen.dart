import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 300,
                child: Stack(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Text(
                              "This is for question one, ufildcjxknsadxjkj dsahcbkjsn,ndhwsbcaddhkwvscald,hvfkacdsvhdfeks",
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Color.fromARGB(255, 32, 31, 31),
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
                        color: Color.fromARGB(255, 69, 0, 159),
                        size: 34,
                      ),
                    ),
                    const Positioned(
                      bottom: 8,
                      right: 8,
                      child: Icon(
                        Icons.format_quote,
                        color: Color.fromARGB(255, 69, 0, 159),
                        size: 34,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
