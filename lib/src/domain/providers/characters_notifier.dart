import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/domain/providers/characters_state_notifier.dart';

import '../../data/providers/rick_morthy_api_provider.dart';

final charactersProvider =
    StateNotifierProvider<CharactersNotifier, AsyncValue<String>>((ref) {
  return CharactersNotifier(ref.watch(rickMorthyRepository));
});
