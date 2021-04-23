import 'dart:convert';

import 'package:devquiz/shared/model/question_model.dart';

enum Level {
  facil,
  normal,
  dificil,
  perito
}

extension LevelStringExt on String {
  Level get levelParse => {
    "facil": Level.facil,
    "normal": Level.normal,
    "dificil": Level.dificil,
    "perito": Level.perito,
  }[this]!;
}

extension LevelExt on Level {
  String get parse => {
    Level.facil : "facil",
    Level.normal : "normal",
    Level.dificil : "dificil",
    Level.perito : "perito",
  }[this]!;
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAnswered;
  final String imagem;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAnswered = 0,
    required this.imagem,
    required this.level
  });

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return new QuizModel(
      title: map['title'] as String,
      questions: List<QuestionModel>.from(
        map['questions']?.map((x) => QuestionModel.fromMap(x))
      ),
      questionAnswered: map['questionAnswered'] as int,
      imagem: map['imagem'] as String,
      level: map['level'].toString().levelParse,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': this.title,
      'questions': this.questions.map((x) => x.toMap()).toList(),
      'questionAnswered': this.questionAnswered,
      'imagem': this.imagem,
      'level': this.level.parse,
    } as Map<String, dynamic>;
  }

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));

  String toJson() => json.encode(toMap());
}