import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/user_model.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void login(String email, String password) async {
    emit(AuthLoading());
    
    await Future.delayed(const Duration(seconds: 2));
    
    if (email.isNotEmpty && password.length >= 6) {
      emit(AuthSuccess(User(email: email, password: password)));
    } else {
      emit(AuthFailure('Invalid credentials'));
    }
  }

  void register(String email, String password) async {
    emit(AuthLoading());
    
    await Future.delayed(const Duration(seconds: 2));
    
    if (email.isNotEmpty && password.length >= 6) {
      emit(AuthSuccess(User(email: email, password: password)));
    } else {
      emit(AuthFailure('Registration failed'));
    }
  }

  void logout() {
    emit(AuthInitial());
  }
}

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final User user;
  AuthSuccess(this.user);
}

class AuthFailure extends AuthState {
  final String message;
  AuthFailure(this.message);
}