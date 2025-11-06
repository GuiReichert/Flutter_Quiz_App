import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(155, 255, 255, 255),
          ),
          SizedBox(height: 80),
          Text(
            "Aprendendo Flutter",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 210, 154, 241),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: ContinuousRectangleBorder(),
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Jogar'),
          ),
        ],
      ),
    );
  }
}
