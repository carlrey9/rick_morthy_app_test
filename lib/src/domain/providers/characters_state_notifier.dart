import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/data/repositories/rick_morthy_api_repository.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character/character_model.dart';

class CharactersNotifier
    extends StateNotifier<AsyncValue<List<CharacterModel>>> {
  CharactersNotifier(this.rickMorthyRepository) : super(const AsyncLoading()) {
    getCharacters();
  }

  RickMorthyRepository rickMorthyRepository;
  AsyncValue<List<CharacterModel>>? previousState;

  Future<void> getCharacters() async {
    previousState = state;
    state = const AsyncLoading();
    try {
      List<CharacterModel> charactersInfo =
          await rickMorthyRepository.getCharacters();
      state = AsyncValue.data(charactersInfo);
    } catch (error) {
      state = AsyncValue.error(error, StackTrace.current);
      return Future.error(error);
    }
  }
}
