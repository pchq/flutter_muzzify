import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/l_domain/repositories/i_artist_repository.dart';
import '/models/artist.dart';

part 'artist_cubit.freezed.dart';
part 'artist_state.dart';

class ArtistCubit extends Cubit<ArtistState> {
  final IArtistRepository artistRepository;
  ArtistCubit({
    required this.artistRepository,
  }) : super(const ArtistState.initial());

  int _topArtistsPage = 0;
  bool _topArtistsLoadedAll = false;
  final List<Artist> _topArtists = [];
  void loadTop() async {
    if (state is _Loading) return;

    try {
      emit(ArtistState.loading());
      final artists = await artistRepository.loadTop(page: _topArtistsPage);
      if (artists.isNotEmpty) {
        _topArtistsPage++;
        _topArtists.addAll(artists);
      } else {
        _topArtistsLoadedAll = true;
      }
      emit(ArtistState.topSuccess(_topArtists, _topArtistsLoadedAll));
    } catch (e) {
      emit(ArtistState.error(e.toString()));
    }
  }

  int _searchPage = 0;
  bool _searchLoadedAll = false;
  String _searchQuery = '';
  final List<Artist> _searchArtists = [];
  void search(String query) async {
    if (state is _Loading) return;

    if (query != _searchQuery) {
      _searchPage = 0;
      _searchLoadedAll = false;
      _searchArtists.clear();
    }
    _searchQuery = query;

    try {
      emit(ArtistState.loading());
      final artists = await artistRepository.search(_searchQuery, page: _searchPage);
      if (artists.isNotEmpty) {
        _searchPage++;
        _searchArtists.addAll(artists);
      } else {
        _searchLoadedAll = true;
      }
      emit(ArtistState.searchSuccess(_searchArtists, _searchLoadedAll));
    } catch (e) {
      emit(ArtistState.error(e.toString()));
    }
  }
}
