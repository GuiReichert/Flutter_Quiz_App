import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.textoResposta,
    required this.botaoClick,
  });

  final String textoResposta;
  final void Function() botaoClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: botaoClick,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 31, 3, 105),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(40),
        ),
      ),
      child: Text(
        textoResposta,
        textAlign: TextAlign.center,
      ),
    );
  }
}
