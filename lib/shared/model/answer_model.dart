import 'dart:convert';

class AnswerModel {
  final String title;
  final bool isRight;

  AnswerModel({required this.title, this.isRight = false});

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return new AnswerModel(
      title: map['title'] as String,
      isRight: map['isRight'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': this.title,
      'isRight': this.isRight,
    } as Map<String, dynamic>;
  }

  factory AnswerModel.fromJson(String source) =>
      AnswerModel.fromMap(json.decode(source));

  String toJson() => json.encode(toMap());
}