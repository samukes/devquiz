import 'package:devquiz/challenge/widget/answer/answer_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/model/answer_model.dart';
import 'package:devquiz/shared/model/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onChange;

  const QuizWidget({Key? key, required this.question, required this.onChange})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  answer(int index) => widget.question.answers[index];
  var indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(children: [
          SizedBox(
            height: 64,
          ),
          Text(
            this.widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24.0,
          ),
          for (var i = 0; i < this.widget.question.answers.length; i++)
            AnswerWidget(
              answer: answer(i),
              isSelected: this.indexSelected == i,
              disabled: indexSelected != -1,
              onTap: () {
                this.indexSelected = i;
                widget.onChange();
                setState(() {});
                Future.delayed(Duration(seconds: 1))
                    .then((value) => widget.onChange());
              },
            ),
        ]),
      ),
    );
  }
}
