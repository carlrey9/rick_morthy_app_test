import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/data/repositories/rick_morthy_api_repository.dart';

class CharactersNotifier extends StateNotifier<AsyncValue<dynamic>> {
  CharactersNotifier(this.rickMorthyRepository) : super(const AsyncLoading()) {
    getCharacters();
  }

  RickMorthyRepository rickMorthyRepository;
  AsyncValue<dynamic>? previousState;

  Future<void> getCharacters() async {
    previousState = state;
    state = const AsyncLoading();
    try {
      dynamic charactersInfo = await rickMorthyRepository.getCharacters();
      state = AsyncValue.data(charactersInfo);
    } catch (error) {
      state = AsyncValue.error(error, StackTrace.current);
      throw Future.error(error);
    }
  }
}
