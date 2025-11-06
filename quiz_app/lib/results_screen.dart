import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Resultado: X/Y !',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 210, 154, 241),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            questionsSummary(),
            TextButton(
              onPressed: () {},
              child: Text('Jogar Novamente'),
            ),
          ],
        ),
      ),
    );
  }

  Widget questionsSummary() {
    return Column(
      children:
          getSummaryData().map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      SizedBox(height: 5),
                      Text(data['user_answer'] as String),
                      SizedBox(height: 5),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
    );
  }
}
