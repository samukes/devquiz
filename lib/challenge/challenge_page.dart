import 'file:///D:/estudo_flutter/mines/devquiz/lib/challenge/widget/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/challenge/widget/quiz/quiz_widget.dart';
import 'package:devquiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: SafeArea(
            child: QuestionIndicatorWidget()
        ),
      ),
      body: QuizWidget(titulo: "O que o flutter faz em sua totalidade",),
    );
  }
}
