part of 'login_bloc.dart';

@immutable
abstract class LoginState{}
// Define the states
abstract class LoginActionState extends LoginState{}
class LoginInitialState extends LoginState {
}


class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {}

class LoginFailureState extends LoginState {
  final String error;
  LoginFailureState({required this.error});
}

class LoginButtonPressedState extends LoginState{

}