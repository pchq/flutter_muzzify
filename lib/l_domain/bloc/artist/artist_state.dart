part of 'artist_cubit.dart';

@freezed
class ArtistState with _$ArtistState {
  const factory ArtistState.initial() = ArtistStateInitial;
  const factory ArtistState.loading() = ArtistStateLoading;
  const factory ArtistState.topSuccess(List<Artist> artists) = ArtistStateTopSuccess;
  const factory ArtistState.searchSuccess(List<Artist> artists) = ArtistStateSearchSuccess;
  const factory ArtistState.error(String message) = ArtistStateError;
}
