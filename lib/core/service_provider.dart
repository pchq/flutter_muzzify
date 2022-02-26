import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import '/l_data/repositories/auth_repository.dart';
import '/l_domain/repositories/i_auth_repository.dart';
import '/routing/app_router.dart';
import '/routing/auth_guard.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final I = ServiceProvider();

  void init() {
    // routing
    _getIt.registerLazySingleton<AppRouter>(
      () => AppRouter(authGuard: _getIt()),
    );
    _getIt.registerLazySingleton<AuthGuard>(
      () => AuthGuard(authRepository: _getIt()),
    );

    // auth
    _getIt.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(firebaseAuth: _getIt()),
    );
    _getIt.registerLazySingleton<FirebaseAuth>(
      () => FirebaseAuth.instance,
    );
  }
}
