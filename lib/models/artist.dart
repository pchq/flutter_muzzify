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
