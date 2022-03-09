import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/l_domain/repositories/i_auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository authRepository;

  AuthCubit({
    required this.authRepository,
  }) : super(AuthState.initial());

  /// текущее состояние кнопки регистрация / авторизация
  bool isRegistration = false;

  /// авторизация/регистрация
  Future<void> login(String email, String password) async {
    try {
      emit(AuthState.loading());
      var result = isRegistration
          ? await authRepository.register(email, password)
          : await authRepository.login(email, password);
      if (result != null) {
        emit(AuthState.success());
      } else {
        emit(AuthState.error('cubit error'));
      }
    } catch (e) {
      print(e.toString());
      emit(AuthState.error(e.toString()));
    }
  }

  /// выход
  Future<void> logout() async {
    emit(AuthState.loading());
    await authRepository.logout();
    emit(AuthState.initial());
  }

  /// переключатель регистрация-авторизация
  void toggleAuthType(bool isRegistration) {
    this.isRegistration = isRegistration;
    emit(AuthState.initial(isRegistration));
  }

  /// данные текущего пользователя
  User get user => authRepository.user;

  /// авторизован ли пользователь
  bool get isLogin => authRepository.isLogin();
}
