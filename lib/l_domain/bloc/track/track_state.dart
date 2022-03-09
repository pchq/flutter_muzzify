part of 'track_cubit.dart';

@freezed
class TrackState with _$TrackState {
  const factory TrackState.initial() = _Initial;
  const factory TrackState.loading() = _Loading;
  const factory TrackState.success(List<Track> tracks, bool allLoaded) = _Success;
  const factory TrackState.error(ErrorObject error) = _Error;
}
