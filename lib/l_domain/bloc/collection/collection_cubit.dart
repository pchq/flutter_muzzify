import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/l_domain/repositories/i_collection_repository.dart';
import '/models/track.dart';

part 'collection_cubit.freezed.dart';
part 'collection_state.dart';

class CollectionCubit extends Cubit<CollectionState> {
  final ICollectionRepository collectionRepository;

  CollectionCubit({
    required this.collectionRepository,
  }) : super(CollectionState.initial());

  Future<void> add(Track track) async {
    emit(CollectionState.loading());

    try {
      await collectionRepository.add(track);
      emit(CollectionState.success(true));
    } catch (e) {
      emit(CollectionState.error());
    }
  }

  Future<void> remove(Track track) async {
    emit(CollectionState.loading());

    try {
      await collectionRepository.remove(track);
      emit(CollectionState.success(false));
    } catch (e) {
      emit(CollectionState.error());
    }
  }

  Future<void> checkTrack(Track track) async {
    emit(CollectionState.loading());

    try {
      final inCollection = await collectionRepository.checkTrack(track);
      emit(CollectionState.success(inCollection));
    } catch (e) {
      emit(CollectionState.error());
    }
  }

  Stream<List<Track>> getTracks([bool newFirst = true]) async* {
    yield* collectionRepository.getAll(newFirst: newFirst);
  }
}
