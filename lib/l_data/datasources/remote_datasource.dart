import 'package:dio/dio.dart';

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
          'https://api.napster.com/v2.2/artists/top?limit=${limit}&offset=${page * limit}&apikey=${AppConfig.napsterApiKey}');

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
}
