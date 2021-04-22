import 'package:devquiz/challenge/widget/answer/answer_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String titulo;

  const QuizWidget({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.titulo,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24.0,),
          AnswerWidget(
              title: "Possibilita a criação de componentes renderizados nativamente",
            isRight: false,
            isSelected: true,
          ),
          AnswerWidget(
              title: "Possibilita a criação de componentes renderizados nativamente",
          ),
          AnswerWidget(
              title: "Possibilita a criação de componentes renderizados nativamente",
          ),
          AnswerWidget(
              title: "Possibilita a criação de componentes renderizados nativamente",
          ),
        ]
      ),
    );
  }
}
