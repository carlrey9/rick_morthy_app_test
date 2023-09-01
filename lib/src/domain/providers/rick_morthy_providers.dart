import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character/character_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/location/location_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/providers/characters_state_notifier.dart';
import 'package:rick_and_morthy_app_test/src/domain/providers/episodes_state_notifier.dart';
import 'package:rick_and_morthy_app_test/src/domain/providers/locations_state_notifier.dart';

import '../../data/providers/rick_morthy_api_provider.dart';

final charactersProvider =
    StateNotifierProvider<CharactersNotifier, AsyncValue<List<CharacterModel>>>(
        (ref) {
  return CharactersNotifier(ref.watch(rickMorthyRepository));
});

final episodesProvider =
    StateNotifierProvider<EpisodesNotifier, AsyncValue<List<EpisodeModel>>>(
        (ref) {
  return EpisodesNotifier(ref.watch(rickMorthyRepository));
});

final locationsProvider =
    StateNotifierProvider<LocationsNotifier, AsyncValue<List<LocationModel>>>(
        (ref) {
  return LocationsNotifier(ref.watch(rickMorthyRepository));
});
