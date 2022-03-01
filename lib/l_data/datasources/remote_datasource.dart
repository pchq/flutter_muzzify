import 'package:dio/dio.dart';
import 'package:muzzify/models/track.dart';

import '/models/artist.dart';
import '/core/app_config.dart';

class RemoteDatasource {
  final Dio dio;
  RemoteDatasource({
    required this.dio,
  });

  Future<List<Artist>> loadTopArtists(int limit, int page) async {
    try {
      final response = await dio.get(
        'https://api.napster.com/v2.2/artists/top?limit=${limit}&offset=${page * limit}&apikey=${AppConfig.napsterApiKey}',
      );

      if (response.statusCode == 200) {
        final List<Artist> artists =
            response.data['artists'].map<Artist>((item) => Artist.fromJson(item)).toList();
        return artists;
      } else {
        throw Exception('err: response.statusCode = ${response.statusCode}');
      }
    } catch (e) {
      print('err: $e');
      throw Exception();
    }
  }

  Future<List<Artist>> searchArtists(String query, int limit, int page) async {
    try {
      final response = await dio.get(
        'https://api.napster.com/v2.2/search?query=${query}&type=artist&per_type_limit=${limit}&offset=${page * limit}&apikey=${AppConfig.napsterApiKey}',
      );

      if (response.statusCode == 200) {
        final List<Artist> artists = response.data['search']['data']['artists']
            .map<Artist>((item) => Artist.fromJson(item))
            .toList();
        return artists;
      } else {
        throw Exception('err: response.statusCode = ${response.statusCode}');
      }
    } catch (e) {
      print('err: $e');
      throw Exception();
    }
  }

  Future<List<Track>> loadTracks(String artistId, int limit, int page) async {
    try {
      final response = await dio.get(
          'https://api.napster.com/v2.2/artists/${artistId}/tracks/top?limit=${limit}&offset=${page * limit}&apikey=${AppConfig.napsterApiKey}');

      if (response.statusCode == 200) {
        final List<Track> tracks =
            response.data['tracks'].map<Track>((item) => Track.fromJson(item)).toList();
        return tracks;
      } else {
        throw Exception('err: response.statusCode = ${response.statusCode}');
      }
    } catch (e) {
      print('err: $e');
      throw Exception();
    }
  }
}
