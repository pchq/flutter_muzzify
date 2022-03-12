import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  /// проверка на авторизацию
  bool isLogin();

  /// отслеживать авторизацию (для auth guard)
  Stream<bool> listenLogin();

  /// авторизоваться
  Future<String?> login(String email, String password);

  /// зарегистрироваться
  Future<String?> register(String email, String password);

  /// разлогиниться
  Future<void> logout();

  /// данные текущего юзера
  User get user;
}
