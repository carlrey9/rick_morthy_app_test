import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/data/repositories/rick_morthy_api_repository.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/location/location_model.dart';

class LocationsNotifier extends StateNotifier<AsyncValue<List<LocationModel>>> {
  LocationsNotifier(this.rickMorthyRepository) : super(const AsyncLoading()) {
    getLocations();
  }

  RickMorthyRepository rickMorthyRepository;
  AsyncValue<List<LocationModel>>? previousState;

  Future<void> getLocations() async {
    previousState = state;
    state = const AsyncLoading();
    try {
      List<LocationModel> locationInfo =
          await rickMorthyRepository.getLocations();
      state = AsyncValue.data(locationInfo);
    } catch (error) {
      state = AsyncValue.error(error, StackTrace.current);
      return Future.error(error);
    }
  }
}
