import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const Artist._();

  const factory Artist({
    required String id,
    required String name,
    @_BioSerialiser() @JsonKey(name: 'bios') String? bio,
  }) = _Artist;

  // final String id;
  // final String name;
  // @JsonKey(name: 'bios', fromJson: _bioFromJson, includeIfNull: false)
  // final String? bio;
  // @JsonKey(ignore: true)
  // late final String imgSmPath;
  // @JsonKey(ignore: true)
  // late final String imgLgPath;
  // @JsonKey(ignore: true)
  // late List<Track> tracks;

  // Artist({
  //   required this.id,
  //   required this.name,
  //   this.bio,
  // }) {
  //   imgSmPath =
  //       'https://api.napster.com/imageserver/v2/artists/${this.id}/images/150x100.jpg';
  //   imgLgPath =
  //       'https://api.napster.com/imageserver/v2/artists/${this.id}/images/633x422.jpg';
  //   tracks = [];
  // }

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

class _BioSerialiser implements JsonConverter<String?, dynamic> {
  const _BioSerialiser();

  @override
  String fromJson(json) {
    // final exp = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);
    switch (json.runtimeType) {
      case String:
        return json;
      case List:
        return json?[0]['bio'] ?? '';
      default:
        return '';
    }
  }

  @override
  String? toJson(String? object) => object;
}
