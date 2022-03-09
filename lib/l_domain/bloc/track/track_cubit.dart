import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/core/errors/error_object.dart';
import '/l_domain/repositories/i_track_repository.dart';
import '/models/track.dart';

part 'track_cubit.freezed.dart';
part 'track_state.dart';

class TrackCubit extends Cubit<TrackState> {
  final ITrackRepository trackRepository;
  TrackCubit({
    required this.trackRepository,
  }) : super(const TrackState.initial());

  int _page = 0;
  bool _loadedAll = false;
  final List<Track> _artistTracks = [];
  void load(String artistId, {bool isFirst = false}) async {
    if (state is _Loading) return;

    if (isFirst) {
      _page = 0;
      _loadedAll = false;
      _artistTracks.clear();
    }
    try {
      emit(const TrackState.loading());
      final tracks = await trackRepository.loadByArtist(artistId, page: _page);
      _artistTracks.addAll(tracks);
      if (tracks.isNotEmpty) {
        _page++;
      } else {
        _loadedAll = true;
      }
      emit(TrackState.success(_artistTracks, _loadedAll));
    } catch (e) {
      emit(TrackState.error(ErrorObject(e)));
    }
  }
}
