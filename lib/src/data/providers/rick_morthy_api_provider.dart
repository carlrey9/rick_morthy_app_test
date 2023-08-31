import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/data/repositories/rick_morthy_api_repository.dart';

final rickMorthyRepository =
    Provider<RickMorthyRepository>((ref) => RickMorthyRepositoryImpl());
