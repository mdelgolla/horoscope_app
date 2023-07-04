import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:horoscope_app/models/user.dart';
import 'package:meta/meta.dart';

part 'edit_user_event.dart';

part 'edit_user_state.dart';

class EditUserBloc extends Bloc<EditUserEvent, EditUserState> {
  EditUserBloc() : super(EditUserInitialState()) {
    on<EditUserInitialEvent>(editUserInitialEvent);
  }

  FutureOr<void> editUserInitialEvent(
      EditUserInitialEvent event, Emitter<EditUserState> emit) async {
    emit(EditUserInitialState());
  }
}
