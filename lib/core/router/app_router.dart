import 'dart:html';

import 'package:go_router/go_router.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character/character_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/location/location_model.dart';
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
        name: 'home',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
              path: 'episodes',
              name: 'episodes',
              builder: (context, state) => const EpisodesPage(),
              routes: [
                GoRoute(
                    path: ':id',
                    name: 'detail_episodes',
                    builder: (context, state) {
                      final id = state.pathParameters['id'];
                      return DetailEpisodePage(
                        episodeModel: state.extra as EpisodeModel,
                        id: int.parse(id!) as int,
                      );
                    }),
              ]),
          GoRoute(
              path: 'characters',
              name: 'characters',
              builder: (context, state) => CharactersPage(),
              routes: [
                GoRoute(
                    path: ':id',
                    name: 'detail_character',
                    builder: (context, state) {
                      final id = state.pathParameters['id'];
                      return DetailCharacterPage(
                        characterModel: state.extra as CharacterModel,
                        id: int.parse(id!) as int,
                      );
                    }),
              ]),
          GoRoute(
              path: 'locations',
              name: 'locations',
              builder: (context, state) => const LocationsPage(),
              routes: [
                GoRoute(
                    path: ':id',
                    name: 'detail_location',
                    builder: (context, state) {
                      final id = state.pathParameters['id'];
                      return DetailLocationPage(
                        locationModel: state.extra as LocationModel,
                        id: int.parse(id!) as int,
                      );
                    }),
              ]),
        ]),
  ],
);
