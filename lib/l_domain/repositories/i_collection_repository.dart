import '/models/track.dart';

abstract class ICollectionRepository {
  /// добавить трек в коллецию
  Future<void> add(Track track);

  /// удалить трек из коллеции
  Future<void> remove(Track track);

  /// проверить добавлен ли трек в коллецию
  Future<bool> checkTrack(Track track);

  /// отслеживать список треков в коллекции
  Stream<List<Track>> getAll({required bool newFirst});
}
