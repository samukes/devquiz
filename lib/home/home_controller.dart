import 'dart:developer';

import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_repository.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/model/answer_model.dart';
import 'package:devquiz/shared/model/question_model.dart';
import 'package:devquiz/shared/model/quiz_model.dart';
import 'package:devquiz/shared/model/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    this.state = HomeState.loading;

    user = await repository.getUser();

    this.state = HomeState.succes;
  }

  void getQuizzes() async {
    this.state = HomeState.loading;

    quizzes = await repository.getQuizzes();

    this.state = HomeState.succes;
  }
}