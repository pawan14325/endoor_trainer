import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) async {
      emit(LoginLoading());

      await Future.delayed(Duration(seconds: 2));

      if (event.email == "test@example.com" && event.password == "password") {
        emit(LoginSuccess());
      } else {
        emit(LoginError("Invalid email or password"));
      }
    });
  }
}
