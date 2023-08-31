import 'package:go_router/go_router.dart';
import 'package:rick_and_morthy_app_test/src/presentation/pages/character/characters_page.dart';
import 'package:rick_and_morthy_app_test/src/presentation/pages/episode/episodes_page.dart';
import 'package:rick_and_morthy_app_test/src/presentation/pages/home_page.dart';
import 'package:rick_and_morthy_app_test/src/presentation/pages/location/locations_page.dart';

import '../../src/presentation/pages/character/detail_character_page.dart';
import '../../src/presentation/pages/episode/detail_episode_page.dart';
import '../../src/presentation/pages/location/detail_location_page.dart';

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
    GoRoute(
      path: '/detail_location',
      builder: (context, state) => const DetailLocationPage(),
      name: "detail_location",
    ),
    GoRoute(
      path: '/detail_character',
      builder: (context, state) => const DetailCharacterPage(),
      name: "detail_character",
    ),
    GoRoute(
      path: '/detail_episodes',
      builder: (context, state) => const DetailEpisodePage(),
      name: "detail_episodes",
    ),
  ],
);
