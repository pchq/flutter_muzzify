part of 'track_cubit.dart';

@freezed
class TrackState with _$TrackState {
  const factory TrackState.initial() = TrackStateInitial;
  const factory TrackState.loading() = TrackStateLoading;
  const factory TrackState.success(List<Track> tracks) = TrackStateSuccess;
  const factory TrackState.error(String message) = TrackStateError;
}
