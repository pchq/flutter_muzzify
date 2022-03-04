import '/core/app_config.dart';
import '/models/artist.dart';

abstract class IArtistRepository {
  Future<List<Artist>> loadTop({
    int limit = AppConfig.pagenArtists,
    int page = 0,
  });

  Future<List<Artist>> search(
    String query, {
    int limit = AppConfig.pagenArtists,
    int page = 0,
  });
}
