part of 'login_bloc.dart';

@immutable
abstract class LoginEvent{}
// Define the events
class LoginInitialEvent extends LoginEvent {

}

class LoginButtonPressedEvent extends LoginEvent {
  final String username;
  final String password;

   LoginButtonPressedEvent({required this.username, required this.password});
}
