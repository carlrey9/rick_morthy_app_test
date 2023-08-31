import 'package:go_router/go_router.dart';
import 'package:rick_and_morthy_app_test/src/presentation/pages/characters_page.dart';
import 'package:rick_and_morthy_app_test/src/presentation/pages/episodes_page.dart';
import 'package:rick_and_morthy_app_test/src/presentation/pages/home_page.dart';
import 'package:rick_and_morthy_app_test/src/presentation/pages/locations_page.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      name: "home",
    ),
    GoRoute(
      path: '/episodes',
      builder: (context, state) => const EpisodesPage(),
      name: "episodes",
    ),
    GoRoute(
      path: '/characters',
      builder: (context, state) => const CharactersPage(),
      name: "characters",
    ),
    GoRoute(
      path: '/locations',
      builder: (context, state) => const LocationsPage(),
      name: "locations",
    ),
  ],
);
