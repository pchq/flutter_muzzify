import 'package:muzzify/l_data/datasources/remote_datasource.dart';

import '/core/app_config.dart';
import '/l_domain/repositories/i_artist_repository.dart';
import '/models/artist.dart';

class ArtistRepository implements IArtistRepository {
  final RemoteDatasource remoteDatasource;
  ArtistRepository({
    required this.remoteDatasource,
  });

  @override
  Future<List<Artist>> loadTop({
    int limit = AppConfig.pagenArtists,
    int page = 0,
  }) async {
    try {
      final remote = remoteDatasource.loadTopArtists(limit, page);
      return remote;
    } catch (e) {
      print('err: $e');
      throw Exception();
    }
  }

  @override
  Future<List<Artist>> search(
    String query, {
    int limit = AppConfig.pagenArtists,
    int page = 0,
  }) {
    // TODO: implement search
    throw UnimplementedError();
  }
}