import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:endo_trainer/core/app_logger.dart';
import 'package:endo_trainer/data/models/request_models/login_model.dart';
import 'package:endo_trainer/data/repositories/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../core/common_components/app_snackbars.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  String countryCode = "+971";
  LoginRepository loginRepository = LoginRepository();

  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>(_loginUser);
    on<CountryCodeEvent>((event, emit) {
      countryCode = event.initialCountry;
      emit(CountryCodeUpdated(countryCode: event.initialCountry));
    });
  }
  void _loginUser(
      LoginSubmitted event,
      Emitter<LoginState> emit,
      ) async {
    try {
      emit(LoginLoading());  // Emit loading state

      if (event.phone.isEmpty && event.password.isEmpty) {
        CustomSnackBar.info(event.context, "Please fill all the fields");
        return;
      } else if (event.phone.isEmpty) {
        CustomSnackBar.info(event.context, "Please enter your phone number");
        return;

      } else if (event.password.isEmpty) {
        CustomSnackBar.info(event.context, "Please enter your password");
        return;

      } else {
        logMessage(msg: "Login request data", level: LogLevel.info);
        Map<String, dynamic> request = {
          'loginData': event.phone,
          "password": event.password
        };

      final res=  await loginRepository.loginUser(request);
        emit(LoginSuccess(res));
      }
    } catch (e) {
      logMessage(msg: e.toString(), level: LogLevel.error);
      emit(LoginFailure(e.toString()));
    }
  }


}
