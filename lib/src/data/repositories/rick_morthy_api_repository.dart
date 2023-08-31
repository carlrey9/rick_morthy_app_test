import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

abstract class RickMorthyRepository {
  Future<String> getCharacters();
  Future<dynamic> getEpisodes();
  Future<dynamic> getLocations();
}

class RickMorthyRepositoryImpl extends RickMorthyRepository {
  final dio = Dio();
  final endPointCharacters = 'https://rickandmortyapi.com/api/character';
  final endPointEpisodes = 'https://rickandmortyapi.com/api/episode';
  final endPointLocations = 'https://rickandmortyapi.com/api/location';

  @override
  Future<String> getCharacters() async {
    try {
      final result = await dio.get(endPointCharacters);

      if (result.statusCode == 200) {
        // print(result.data);
        log("okas");
        final parsedJson = jsonDecode(result.data);
        log(parsedJson['results']);

        return result.data.toString();
      } else {
        throw Exception();
      }
    } catch (err) {
      throw Future.error(err);
    }
  }

  @override
  Future getEpisodes() async {
    try {
      final result = await dio.get(endPointEpisodes);
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
      final result = await dio.get(endPointLocations);
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
