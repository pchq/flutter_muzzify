import '/models/track.dart';

abstract class ICollectionRepository {
  Future<void> add(Track track);
  Future<void> remove(Track track);
  Future<bool> checkTrack(Track track);
  Stream<List<Track>> getAll({required bool newFirst});
}
