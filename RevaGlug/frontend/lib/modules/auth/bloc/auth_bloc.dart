import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth firebaseAuth;

  AuthBloc(this.firebaseAuth) : super(AuthenticationInitial()) {
    // Handle LoginEvent
    on<LoginEvent>((event, emit) async {
      emit(AuthenticationInProgress());

      try {
        // Perform login logic here
        emit(AuthenticationSuccess());
      } catch (e) {
        emit(AuthenticationFailure(e.toString()));
      }
    });
  }
}