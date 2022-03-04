import 'package:firebase_auth/firebase_auth.dart';

import '/l_domain/repositories/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth firebaseAuth;

  const AuthRepository({
    required this.firebaseAuth,
  });

  @override
  bool isLogin() {
    return firebaseAuth.currentUser != null;
  }

  @override
  User get user {
    if (firebaseAuth.currentUser == null) {
      throw Exception();
    } else {
      return firebaseAuth.currentUser!;
    }
  }

  @override
  Stream<bool> listenLogin() async* {
    bool isLogin;

    await for (User? user in firebaseAuth.authStateChanges()) {
      if (user == null) {
        isLogin = false;
      } else {
        isLogin = true;
      }

      yield isLogin;
    }
  }

  @override
  Future<String?> login(String email, String password) async {
    try {
      var result = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return result.user?.uid;
    } on FirebaseAuthException {
      rethrow;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  @override
  Future<String?> register(String email, String password) async {
    try {
      var result =
          await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return result.user?.uid;
    } on FirebaseAuthException {
      rethrow;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  @override
  Future<void> logout() async {
    try {
      await firebaseAuth.signOut();
    } on FirebaseAuthException {
      rethrow;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
