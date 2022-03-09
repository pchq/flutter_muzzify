import 'package:muzzify/l_data/datasources/remote_datasource.dart';

import '/core/app_config.dart';
import '/l_domain/repositories/i_track_repository.dart';
import '/models/track.dart';

class TrackRepository implements ITrackRepository {
  final RemoteDatasource remoteDatasource;
  TrackRepository({
    required this.remoteDatasource,
  });

  @override
  Future<List<Track>> loadByArtist(
    String artistId, {
    int limit = AppConfig.pagenTracks,
    int page = 0,
  }) async {
    final remoteData = remoteDatasource.loadTracks(artistId, limit, page);
    return remoteData;
  }
}
