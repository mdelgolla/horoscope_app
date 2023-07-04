part of 'edit_user_bloc.dart';

@immutable
abstract class EditUserState {}

class EditUserInitialState extends EditUserState {}

class EditUserEditButtonPressedState extends EditUserState {}

class RetrieveSavedUserdataState extends EditUserState {}
