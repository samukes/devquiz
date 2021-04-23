import 'dart:convert';

import 'package:devquiz/shared/model/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({required this.title, required this.answers})
      : assert(answers.length == 4);

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return new QuestionModel(
      title: map['title'] as String,
      answers: List<AnswerModel>.from(
        map['answers']?.map((x) => AnswerModel.fromMap(x))
      ),
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': this.title,
      'answers': this.answers.map((e) => e.toMap()).toList(),
    } as Map<String, dynamic>;
  }

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source));

  String toJson() => json.encode(toMap());
}