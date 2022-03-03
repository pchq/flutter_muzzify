import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/l_domain/bloc/collection/collection_cubit.dart';
import '/l_domain/bloc/artist/artist_cubit.dart';
import '/l_domain/bloc/auth/auth_cubit.dart';
import '/l_domain/bloc/track/track_cubit.dart';
import '/l_domain/repositories/i_artist_repository.dart';
import '/l_domain/repositories/i_auth_repository.dart';
import '/l_domain/repositories/i_track_repository.dart';
import '/l_domain/repositories/i_collection_repository.dart';
import '/l_presentation/app_theme.dart';
import '/core/service_provider.dart';
import '/routing/app_router.dart';

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
        BlocProvider<ArtistCubit>(
          create: (BuildContext context) => ArtistCubit(
            artistRepository: _serviceProvider.get<IArtistRepository>(),
          ),
        ),
        BlocProvider<TrackCubit>(
          create: (BuildContext context) => TrackCubit(
            trackRepository: _serviceProvider.get<ITrackRepository>(),
          ),
        ),
        BlocProvider<CollectionCubit>(
          create: (BuildContext context) => CollectionCubit(
            collectionRepository: _serviceProvider.get<ICollectionRepository>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        routeInformationParser: _serviceProvider.get<AppRouter>().defaultRouteParser(),
        routerDelegate: _serviceProvider.get<AppRouter>().delegate(),
      ),
    );
  }
}
