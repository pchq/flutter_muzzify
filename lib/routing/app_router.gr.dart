// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    IndexRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const IndexPage());
    },
    ArtistsTab.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    SearchTab.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    CollectionTab.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    ArtistsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const ArtistsPage());
    },
    ArtistRoute.name: (routeData) {
      final args = routeData.argsAs<ArtistRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: ArtistPage(key: args.key, artist: args.artist));
    },
    SearchRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const SearchPage());
    },
    CollectionRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const CollectionPage());
    },
    AuthRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const AuthPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(IndexRoute.name, path: '/', children: [
          RouteConfig(ArtistsTab.name,
              path: 'empty-router-page',
              parent: IndexRoute.name,
              children: [
                RouteConfig(ArtistsRoute.name,
                    path: '', parent: ArtistsTab.name),
                RouteConfig(ArtistRoute.name,
                    path: 'artist-page', parent: ArtistsTab.name)
              ]),
          RouteConfig(SearchTab.name,
              path: 'empty-router-page',
              parent: IndexRoute.name,
              children: [
                RouteConfig(SearchRoute.name, path: '', parent: SearchTab.name),
                RouteConfig(ArtistRoute.name,
                    path: 'artist-page', parent: SearchTab.name)
              ]),
          RouteConfig(CollectionTab.name,
              path: 'empty-router-page',
              parent: IndexRoute.name,
              children: [
                RouteConfig(CollectionRoute.name,
                    path: '', parent: CollectionTab.name, guards: [authGuard]),
                RouteConfig(AuthRoute.name,
                    path: 'auth-page', parent: CollectionTab.name)
              ])
        ])
      ];
}

/// generated route for
/// [IndexPage]
class IndexRoute extends PageRouteInfo<void> {
  const IndexRoute({List<PageRouteInfo>? children})
      : super(IndexRoute.name, path: '/', initialChildren: children);

  static const String name = 'IndexRoute';
}

/// generated route for
/// [EmptyRouterPage]
class ArtistsTab extends PageRouteInfo<void> {
  const ArtistsTab({List<PageRouteInfo>? children})
      : super(ArtistsTab.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'ArtistsTab';
}

/// generated route for
/// [EmptyRouterPage]
class SearchTab extends PageRouteInfo<void> {
  const SearchTab({List<PageRouteInfo>? children})
      : super(SearchTab.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'SearchTab';
}

/// generated route for
/// [EmptyRouterPage]
class CollectionTab extends PageRouteInfo<void> {
  const CollectionTab({List<PageRouteInfo>? children})
      : super(CollectionTab.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'CollectionTab';
}

/// generated route for
/// [ArtistsPage]
class ArtistsRoute extends PageRouteInfo<void> {
  const ArtistsRoute() : super(ArtistsRoute.name, path: '');

  static const String name = 'ArtistsRoute';
}

/// generated route for
/// [ArtistPage]
class ArtistRoute extends PageRouteInfo<ArtistRouteArgs> {
  ArtistRoute({Key? key, required Artist artist})
      : super(ArtistRoute.name,
            path: 'artist-page',
            args: ArtistRouteArgs(key: key, artist: artist));

  static const String name = 'ArtistRoute';
}

class ArtistRouteArgs {
  const ArtistRouteArgs({this.key, required this.artist});

  final Key? key;

  final Artist artist;

  @override
  String toString() {
    return 'ArtistRouteArgs{key: $key, artist: $artist}';
  }
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [CollectionPage]
class CollectionRoute extends PageRouteInfo<void> {
  const CollectionRoute() : super(CollectionRoute.name, path: '');

  static const String name = 'CollectionRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: 'auth-page');

  static const String name = 'AuthRoute';
}
