import 'package:freezed_annotation/freezed_annotation.dart';

part 'track.freezed.dart';
part 'track.g.dart';

@freezed
class Track with _$Track {
  const Track._();

  const factory Track({
    required String id,
    required String name,
    required String artistName,
    required String artistId,
    @JsonKey(name: 'previewURL') required String mp3Url,
    required String albumName,
    required String albumId,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
