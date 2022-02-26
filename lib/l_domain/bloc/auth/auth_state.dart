part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial(bool isRegistration) = AuthStateInitial;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.success(String token) = AuthStateSuccess;
  const factory AuthState.error(String message) = AuthStateError;
}
