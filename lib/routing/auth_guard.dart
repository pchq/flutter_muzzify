import 'package:auto_route/auto_route.dart';
import '/l_domain/repositories/i_auth_repository.dart';

import 'app_router.dart';

class AuthGuard extends AutoRedirectGuard {
  final IAuthRepository authRepository;

  late bool isLogin;

  AuthGuard({
    required this.authRepository,
  }) {
    isLogin = authRepository.isLogin();

    authRepository.listenLogin().listen((result) {
      isLogin = result;
      if (!result) {
        reevaluate();
      }
    });
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if (isLogin) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.push(const AuthRoute());
    }
  }
}
