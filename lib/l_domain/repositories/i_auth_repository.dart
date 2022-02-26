abstract class IAuthRepository {
  bool isLogin();

  Stream<bool> listenLogin();

  Future<String?> login(String email, String password);

  Future<String?> register(String email, String password);

  Future<void> logout();
}
