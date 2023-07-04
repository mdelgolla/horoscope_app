part of 'edit_user_bloc.dart';

@immutable
abstract class EditUserEvent {}
class EditUserInitialEvent extends EditUserEvent{

}
class EditUserButtonPressedEvent extends EditUserEvent {
 final User user;

 EditUserButtonPressedEvent({required this.user});
}
