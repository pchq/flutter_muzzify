import 'package:firebase_auth/firebase_auth.dart';

import 'exceptions.dart';

class ErrorObject {
  late final String message;
  final Object exception;

  ErrorObject(
    this.exception,
  ) {
    if (exception is ServerException) {
      message = 'Ошибка сервера';
    } else if (exception is DataParsingException) {
      message = 'Ошибка данных';
    } else if (exception is NoConnectionException) {
      message = 'Ошибка соединения';
    } else if (exception is AuthException) {
      if ((exception as AuthException).code == AuthExceptionCode.noAuth) {
        message = 'Необходимо авторизоваться';
      } else {
        message = 'Неизвестная ошибка авторизации';
      }
    } else if (exception is FirebaseAuthException) {
      final exception = this.exception as FirebaseAuthException;
      switch (exception.code) {
        case 'invalid-email':
          message = 'Неверный формат email';
          break;
        case 'wrong-password':
          message = 'Неправильный пароль';
          break;
        case 'user-not-found':
          message = 'Пользователь с таким email не найден';
          break;
        case 'user-disabled':
          message = 'Пользователь заблокирован';
          break;
        case 'too-many-requests':
          message = 'Слишком много попыток. Попробуйте позже';
          break;
        case 'operation-not-allowed':
          message = 'Вход с помощью email и пароля выключен';
          break;
        case 'email-already-in-use':
          message = 'Пользователь с таким email уже зарегистрирован';
          break;
        case 'weak-password':
          message = 'Пароль должен содержать минимум 6 символов';
          break;
        case 'unknown':
          message = 'Укажите email и пароль';
          break;
        default:
          message = exception.message ?? 'Неизвестная ошибка авторизации fb';
      }
    } else {
      message = 'Неизвестная ошибка';
    }
  }
}
