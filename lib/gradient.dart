import 'package:flutter/material.dart';

class Gradient extends StatelessWidget {
  const Gradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 75, 1, 171),
        Color.fromARGB(255, 69, 0, 159)
      ])),
    );
  }
}
