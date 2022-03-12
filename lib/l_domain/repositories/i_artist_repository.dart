import '/core/app_config.dart';
import '/models/artist.dart';

abstract class IArtistRepository {
  /// список топ артистов
  Future<List<Artist>> loadTop({
    int limit = AppConfig.pagenArtists,
    int page = 0,
  });

  /// поиск артистов по подстроке [query]
  Future<List<Artist>> search(
    String query, {
    int limit = AppConfig.pagenArtists,
    int page = 0,
  });
}
