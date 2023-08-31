import 'package:dio/dio.dart';

abstract class RickMorthyRepository {
  Future<dynamic> getCharacters();
  Future<dynamic> getEpisodes();
  Future<dynamic> getLocations();
}

class RickMorthyRepositoryImpl implements RickMorthyRepository {
  final _dioClient = Dio();
  final endPointCharacters = 'https://rickandmortyapi.com/api/character';
  final endPointEpisodes = 'https://rickandmortyapi.com/api/episode';
  final endPointLocations = 'https://rickandmortyapi.com/api/location';

  @override
  Future getCharacters() async {
    try {
      final result = await _dioClient.get(endPointCharacters);
      if (result.statusCode == 200) {
        print(result.data);
      } else {
        throw Exception();
      }
    } catch (err) {
      throw Exception();
    }
  }

  @override
  Future getEpisodes() async {
    try {
      final result = await _dioClient.get(endPointEpisodes);
      if (result.statusCode == 200) {
        print(result.data);
      } else {
        throw Exception();
      }
    } catch (err) {
      throw Exception();
    }
  }

  @override
  Future getLocations() async {
    try {
      final result = await _dioClient.get(endPointLocations);
      if (result.statusCode == 200) {
        print(result.data);
      } else {
        throw Exception();
      }
    } catch (err) {
      throw Exception();
    }
  }
}
