import 'package:dio/dio.dart';
import 'package:muzzify/core/errors/exceptions.dart';

import '/models/track.dart';
import '/models/artist.dart';
import '/core/app_config.dart';

class RemoteDatasource {
  final Dio dio;
  RemoteDatasource({
    required this.dio,
  });

  /// точка входа запросов
  static const _endpoint = 'https://api.napster.com/v2.2/';

  /// response с обработкой ошибок
  Future<dynamic> _getResponseData(String uri) async {
    try {
      final response = await dio.get('$_endpoint$uri&apikey=${AppConfig.napsterApiKey}');

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw ServerException();
      }
    } catch (e) {
      if (e is ServerException) {
        rethrow;
      } else {
        throw NoConnectionException();
      }
    }
  }

  /// топ артисты
  Future<List<Artist>> loadTopArtists(int limit, int page) async {
    final data = await _getResponseData('artists/top?limit=$limit&offset=${page * limit}');

    try {
      final List<Artist> artists =
          data['artists'].map<Artist>((item) => Artist.fromJson(item)).toList();
      return artists;
    } catch (e) {
      throw DataParsingException();
    }
  }

  /// поиск артистов
  Future<List<Artist>> searchArtists(String query, int limit, int page) async {
    if (query.isEmpty) return [];

    final data = await _getResponseData(
        'search?query=$query&type=artist&per_type_limit=$limit&offset=${page * limit}');

    try {
      final List<Artist> artists =
          data['search']['data']['artists'].map<Artist>((item) => Artist.fromJson(item)).toList();
      return artists;
    } catch (e) {
      throw DataParsingException();
    }
  }

  /// треки артиста
  Future<List<Track>> loadTracks(String artistId, int limit, int page) async {
    final data =
        await _getResponseData('artists/$artistId/tracks/top?limit=$limit&offset=${page * limit}');

    try {
      final List<Track> tracks = data['tracks'].map<Track>((item) => Track.fromJson(item)).toList();
      return tracks;
    } catch (e) {
      throw DataParsingException();
    }
  }
}
