import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/data/repositories/rick_morthy_api_repository.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/episode_model.dart';

class EpisodesNotifier extends StateNotifier<AsyncValue<List<EpisodeModel>>> {
  EpisodesNotifier(this.rickMorthyRepository) : super(const AsyncLoading()) {
    getEpisodes();
  }

  RickMorthyRepository rickMorthyRepository;
  AsyncValue<List<EpisodeModel>>? previousState;

  Future<void> getEpisodes() async {
    previousState = state;
    state = const AsyncLoading();
    try {
      List<EpisodeModel> episodesInfo =
          await rickMorthyRepository.getEpisodes();
      state = AsyncValue.data(episodesInfo);
    } catch (error) {
      state = AsyncValue.error(error, StackTrace.current);
      return Future.error(error);
    }
  }
}
