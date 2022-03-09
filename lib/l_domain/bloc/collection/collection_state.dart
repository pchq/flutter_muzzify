part of 'collection_cubit.dart';

@freezed
class CollectionState with _$CollectionState {
  const factory CollectionState.initial() = _Initial;
  const factory CollectionState.loading() = _Loading;
  const factory CollectionState.success(bool inCollection) = _Success;
  const factory CollectionState.error(ErrorObject error) = _Error;
}
