part of 'artist_cubit.dart';

@freezed
class ArtistState with _$ArtistState {
  const factory ArtistState.initial() = _Initial;
  const factory ArtistState.loading() = _Loading;
  const factory ArtistState.topSuccess(List<Artist> artists, bool allLoaded) = _TopSuccess;
  const factory ArtistState.searchSuccess(List<Artist> artists, bool allLoaded) = _SearchSuccess;
  const factory ArtistState.error(ErrorObject error) = _Error;
}
