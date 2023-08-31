import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/data/repositories/rick_morthy_api_repository.dart';

class CharactersNotifier extends StateNotifier<AsyncValue<String>> {
  CharactersNotifier(this.rickMorthyRepository) : super(const AsyncLoading());

  RickMorthyRepository rickMorthyRepository;
  AsyncValue<String>? previousState;

  Future<void> getCharacters() async {
    previousState = state;
    state = const AsyncLoading();
    try {
      String charactersInfo = await rickMorthyRepository.getCharacters();
      state = AsyncValue.data(charactersInfo);
    } catch (error) {
      state = AsyncValue.error(error, StackTrace.current);
      throw Future.error(error);
    }
  }
}
