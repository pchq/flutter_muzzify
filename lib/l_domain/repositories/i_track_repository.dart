import 'package:muzzify/core/app_config.dart';
import '/models/track.dart';

abstract class ITrackRepository {
  /// список треков исполнителя
  Future<List<Track>> loadByArtist(
    String artistId, {
    int limit = AppConfig.pagenTracks,
    int page = 0,
  });
}
