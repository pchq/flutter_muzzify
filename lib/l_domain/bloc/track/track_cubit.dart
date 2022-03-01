import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muzzify/l_domain/repositories/i_track_repository.dart';
import 'package:muzzify/models/track.dart';

part 'track_cubit.freezed.dart';
part 'track_state.dart';

class TrackCubit extends Cubit<TrackState> {
  final ITrackRepository trackRepository;
  TrackCubit({
    required this.trackRepository,
  }) : super(TrackStateInitial());

  int page = 0;
  bool loadedAll = false;
  String _artistId = '';
  void load(String artistId) async {
    if (state is TrackStateLoading) return;

    if (_artistId != artistId) {
      page = 0;
      loadedAll = false;
    }
    _artistId = artistId;

    try {
      emit(TrackStateLoading());
      final artists = await trackRepository.loadByArtist(_artistId, page: page);
      emit(TrackStateSuccess(artists));
      if (artists.isNotEmpty) {
        page++;
      } else {
        loadedAll = true;
      }
    } catch (e) {
      emit(TrackStateError(e.toString()));
    }
  }
}
