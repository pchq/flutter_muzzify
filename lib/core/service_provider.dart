import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import '/l_data/datasources/remote_datasource.dart';
import '/l_data/repositories/track_repository.dart';
import '/l_data/repositories/artist_repository.dart';
import '/l_data/repositories/collection_repository.dart';
import '/l_data/repositories/auth_repository.dart';
import '/l_domain/repositories/i_track_repository.dart';
import '/l_domain/repositories/i_artist_repository.dart';
import '/l_domain/repositories/i_auth_repository.dart';
import '/l_domain/repositories/i_collection_repository.dart';
import '/l_domain/bloc/auth/auth_cubit.dart';
import '/l_domain/bloc/artist/artist_cubit.dart';
import '/l_domain/bloc/collection/collection_cubit.dart';
import '/l_domain/bloc/track/track_cubit.dart';
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

    // BLoC
    _getIt.registerLazySingleton<AuthCubit>(
      () => AuthCubit(authRepository: _getIt()),
    );
    _getIt.registerLazySingleton<ArtistCubit>(
      () => ArtistCubit(artistRepository: _getIt()),
    );
    _getIt.registerLazySingleton<TrackCubit>(
      () => TrackCubit(trackRepository: _getIt()),
    );
    _getIt.registerLazySingleton<CollectionCubit>(
      () => CollectionCubit(collectionRepository: _getIt()),
    );

    // auth
    _getIt.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(firebaseAuth: _getIt()),
    );

    // artists
    _getIt.registerLazySingleton<IArtistRepository>(
      () => ArtistRepository(remoteDatasource: _getIt()),
    );
    _getIt.registerLazySingleton<RemoteDatasource>(
      () => RemoteDatasource(dio: _getIt()),
    );
    // tracks
    _getIt.registerLazySingleton<ITrackRepository>(
      () => TrackRepository(remoteDatasource: _getIt()),
    );

    //collection
    _getIt.registerLazySingleton<ICollectionRepository>(
      () => CollectionRepository(firebaseAuth: _getIt()),
    );

    // services
    _getIt.registerLazySingleton<FirebaseAuth>(
      () => FirebaseAuth.instance,
    );
    _getIt.registerLazySingleton<Dio>(
      () => Dio(),
    );
  }
}
