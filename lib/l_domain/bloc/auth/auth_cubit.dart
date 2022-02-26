import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/l_domain/repositories/i_auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository authRepository;

  AuthCubit({
    required this.authRepository,
  }) : super(const AuthStateInitial(false));

  bool isRegistration = false;

  Future<void> login(String email, String password) async {
    try {
      emit(const AuthStateLoading());
      var result = isRegistration
          ? await authRepository.register(email, password)
          : await authRepository.login(email, password);
      if (result != null) {
        emit(AuthStateSuccess(result));
      } else {
        emit(const AuthStateError('cubit error'));
      }
    } catch (e) {
      print(e.toString());
      emit(AuthStateError(e.toString()));
    }
  }

  Future<void> logout() async {
    await authRepository.logout();
  }

  void toggleAuthType(bool isRegistration) {
    this.isRegistration = isRegistration;
    emit(AuthStateInitial(isRegistration));
  }
}
