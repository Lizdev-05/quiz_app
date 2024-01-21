import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(12),
        child: Container(
          // padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
          // width: 180,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 130, 30, 160),
              Color.fromARGB(255, 176, 91, 21)
            ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
          ),
          child: TextButton(
            onPressed: onTap,
            child: Text(
              answerText,
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
