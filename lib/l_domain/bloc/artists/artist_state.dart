part of 'artist_cubit.dart';

@freezed
class ArtistState with _$ArtistState {
  const factory ArtistState.initial() = ArtistStateInitial;
  const factory ArtistState.loading() = ArtistStateLoading;
  const factory ArtistState.success(List<Artist> artists) = ArtistStateSuccess;
  const factory ArtistState.error(String message) = ArtistStateError;
}
