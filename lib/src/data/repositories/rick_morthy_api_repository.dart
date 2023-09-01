import 'package:dio/dio.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character/character_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/location/location_model.dart';

final endPointCharacters = 'https://rickandmortyapi.com/api/character';
final endPointEpisodes = 'https://rickandmortyapi.com/api/episode';
final endPointLocations = 'https://rickandmortyapi.com/api/location';

abstract class RickMorthyRepository {
  Future<List<CharacterModel>> getCharacters();
  Future<CharacterModel> getOneCharacter(String url);
  Future<dynamic> getEpisodes();
  Future<dynamic> getLocations();
}

class RickMorthyRepositoryImpl extends RickMorthyRepository {
  final dio = Dio();

  @override
  Future<List<CharacterModel>> getCharacters() async {
    try {
      final response = await dio.get(endPointCharacters);

      if (response.statusCode == 200) {
        final List<dynamic> results = response.data['results'].toList();

        List<CharacterModel> characters = [];
        for (int i = 0; i < results.length; i++) {
          characters.add(CharacterModel.fromJson(results[i]));
        }
        return characters;
      } else {
        return Future.error("Error getting data");
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  @override
  Future getEpisodes() async {
    try {
      final response = await dio.get(endPointEpisodes);
      if (response.statusCode == 200) {
        final List<dynamic> results = response.data['results'].toList();
        List<EpisodeModel> episodes = [];
        for (int i = 0; i < results.length; i++) {
          episodes.add(EpisodeModel.fromJson(results[i]));
        }
        return episodes;
      } else {
        return Future.error("Error getting data");
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  @override
  Future getLocations() async {
    try {
      final response = await dio.get(endPointLocations);
      if (response.statusCode == 200) {
        final List<dynamic> results = response.data['results'].toList();
        List<LocationModel> locations = [];
        for (int i = 0; i < results.length; i++) {
          locations.add(LocationModel.fromJson(results[i]));
        }
        return locations;
      } else {
        return Future.error("Error getting data");
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  @override
  Future<CharacterModel> getOneCharacter(String url) async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final result = response.data;
        CharacterModel character = CharacterModel.fromJson(result);
        return character;
      } else {
        return Future.error("Error getting data");
      }
    } catch (err) {
      return Future.error(err);
    }
  }
}
