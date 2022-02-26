import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/l_presentation/pages/artist_page.dart';
import '/l_presentation/pages/search_page.dart';
import '/l_presentation/pages/artists_page.dart';
import '/l_presentation/pages/collection_page.dart';
import '/l_presentation/pages/auth_page.dart';
import '/l_presentation/pages/index_page.dart';
import '/l_presentation/pages/profile_page.dart';

import 'auth_guard.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: IndexPage,
      children: [
        AutoRoute(
          name: 'ArtistsTab',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              initial: true,
              page: ArtistsPage,
            ),
            AutoRoute(
              page: ArtistPage,
            ),
            ..._nestedRoutes,
          ],
        ),
        AutoRoute(
          name: 'SearchTab',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              initial: true,
              page: SearchPage,
            ),
            AutoRoute(
              page: ArtistPage,
            ),
            ..._nestedRoutes,
          ],
        ),
        AutoRoute(
          name: 'CollectionTab',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              initial: true,
              page: CollectionPage,
              guards: [AuthGuard],
            ),
            ..._nestedRoutes,
          ],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required AuthGuard authGuard}) : super(authGuard: authGuard);
}

const _nestedRoutes = [
  AutoRoute(page: AuthPage),
  AutoRoute(
    page: ProfilePage,
    guards: [AuthGuard],
  ),
];
