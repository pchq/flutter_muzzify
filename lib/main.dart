import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'l_domain/bloc/auth/auth_cubit.dart';
import 'l_domain/repositories/i_auth_repository.dart';

import 'core/service_provider.dart';
import 'routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ServiceProvider().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ServiceProvider _serviceProvider = ServiceProvider();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => AuthCubit(
            authRepository: _serviceProvider.get<IAuthRepository>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser:
            _serviceProvider.get<AppRouter>().defaultRouteParser(),
        routerDelegate: _serviceProvider.get<AppRouter>().delegate(),
      ),
    );
  }
}
