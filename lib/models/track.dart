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

  // final String id;
  // final String name;
  // final String artistName;
  // final String artistId;
  // @JsonKey(name: 'previewURL')
  // final String mp3Url;
  // final String albumName;
  // final String albumId;
  // @JsonKey(ignore: true)
  // late String imgSmPath;
  // @JsonKey(ignore: true)
  // late String imgMdPath;

  // Track({
  //   required this.id,
  //   required this.name,
  //   required this.artistName,
  //   required this.artistId,
  //   required this.mp3Url,
  //   required this.albumName,
  //   required this.albumId,
  // }) {
  //   imgSmPath = 'https://api.napster.com/imageserver/v2/albums/${this.albumId}/images/70x70.jpg';
  //   imgMdPath = 'https://api.napster.com/imageserver/v2/albums/${this.albumId}/images/170x170.jpg';
  // }

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
