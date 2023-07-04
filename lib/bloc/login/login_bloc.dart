import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginInitialEvent>(loginInitialEvent);
    on<LoginButtonPressedEvent>(loginPressedEvent);
  }
  FutureOr<void> loginInitialEvent(
      LoginInitialEvent event, Emitter<LoginState> emit) {
   emit(LoginInitialState());
  }
  FutureOr<void> loginPressedEvent(
      LoginButtonPressedEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoadingState());
    await Future.delayed(Duration(seconds: 3));
    if (event.username == 'admin' && event.password == 'password') {
            emit(LoginSuccessState());
        } else {
         emit  (LoginFailureState(error: "Invalid username or password"));
       }
  }
}

