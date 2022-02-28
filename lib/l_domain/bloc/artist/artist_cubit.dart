import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muzzify/l_domain/repositories/i_artist_repository.dart';
import 'package:muzzify/models/artist.dart';

part 'artist_cubit.freezed.dart';
part 'artist_state.dart';

class ArtistCubit extends Cubit<ArtistState> {
  final IArtistRepository artistRepository;
  ArtistCubit({
    required this.artistRepository,
  }) : super(const ArtistStateInitial());

  int topArtistsPage = 0;
  bool topArtistsLoadedAll = false;
  void loadTop() async {
    if (state is ArtistStateLoading) return;

    try {
      emit(ArtistStateLoading());
      final artists = await artistRepository.loadTop(page: topArtistsPage);
      emit(ArtistStateTopSuccess(artists));
      if (artists.isNotEmpty) {
        topArtistsPage++;
      } else {
        topArtistsLoadedAll = true;
      }
    } catch (e) {
      emit(ArtistStateError(e.toString()));
    }
  }

  int searchPage = 0;
  bool searchLoadedAll = false;
  String searchQuery = '';
  void search(String query) async {
    if (state is ArtistStateLoading) return;

    if (query != searchQuery) {
      searchPage = 0;
      searchLoadedAll = false;
    }
    searchQuery = query;

    try {
      emit(ArtistStateLoading());
      final artists = await artistRepository.search(searchQuery, page: searchPage);
      emit(ArtistStateSearchSuccess(artists));
      if (artists.isNotEmpty) {
        searchPage++;
      } else {
        searchLoadedAll = true;
      }
    } catch (e) {
      emit(ArtistStateError(e.toString()));
    }
  }
}
