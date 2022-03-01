// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
class _$TrackTearOff {
  const _$TrackTearOff();

  _Track call(
      {required String id,
      required String name,
      required String artistName,
      required String artistId,
      @JsonKey(name: 'previewURL') required String mp3Url,
      required String albumName,
      required String albumId}) {
    return _Track(
      id: id,
      name: name,
      artistName: artistName,
      artistId: artistId,
      mp3Url: mp3Url,
      albumName: albumName,
      albumId: albumId,
    );
  }

  Track fromJson(Map<String, Object?> json) {
    return Track.fromJson(json);
  }
}

/// @nodoc
const $Track = _$TrackTearOff();

/// @nodoc
mixin _$Track {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'previewURL')
  String get mp3Url => throw _privateConstructorUsedError;
  String get albumName => throw _privateConstructorUsedError;
  String get albumId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String artistName,
      String artistId,
      @JsonKey(name: 'previewURL') String mp3Url,
      String albumName,
      String albumId});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res> implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  final Track _value;
  // ignore: unused_field
  final $Res Function(Track) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? artistName = freezed,
    Object? artistId = freezed,
    Object? mp3Url = freezed,
    Object? albumName = freezed,
    Object? albumId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: artistId == freezed
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      mp3Url: mp3Url == freezed
          ? _value.mp3Url
          : mp3Url // ignore: cast_nullable_to_non_nullable
              as String,
      albumName: albumName == freezed
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String,
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$TrackCopyWith(_Track value, $Res Function(_Track) then) =
      __$TrackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String artistName,
      String artistId,
      @JsonKey(name: 'previewURL') String mp3Url,
      String albumName,
      String albumId});
}

/// @nodoc
class __$TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res>
    implements _$TrackCopyWith<$Res> {
  __$TrackCopyWithImpl(_Track _value, $Res Function(_Track) _then)
      : super(_value, (v) => _then(v as _Track));

  @override
  _Track get _value => super._value as _Track;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? artistName = freezed,
    Object? artistId = freezed,
    Object? mp3Url = freezed,
    Object? albumName = freezed,
    Object? albumId = freezed,
  }) {
    return _then(_Track(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: artistId == freezed
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      mp3Url: mp3Url == freezed
          ? _value.mp3Url
          : mp3Url // ignore: cast_nullable_to_non_nullable
              as String,
      albumName: albumName == freezed
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String,
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Track extends _Track {
  const _$_Track(
      {required this.id,
      required this.name,
      required this.artistName,
      required this.artistId,
      @JsonKey(name: 'previewURL') required this.mp3Url,
      required this.albumName,
      required this.albumId})
      : super._();

  factory _$_Track.fromJson(Map<String, dynamic> json) =>
      _$$_TrackFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String artistName;
  @override
  final String artistId;
  @override
  @JsonKey(name: 'previewURL')
  final String mp3Url;
  @override
  final String albumName;
  @override
  final String albumId;

  @override
  String toString() {
    return 'Track(id: $id, name: $name, artistName: $artistName, artistId: $artistId, mp3Url: $mp3Url, albumName: $albumName, albumId: $albumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Track &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName) &&
            const DeepCollectionEquality().equals(other.artistId, artistId) &&
            const DeepCollectionEquality().equals(other.mp3Url, mp3Url) &&
            const DeepCollectionEquality().equals(other.albumName, albumName) &&
            const DeepCollectionEquality().equals(other.albumId, albumId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(artistName),
      const DeepCollectionEquality().hash(artistId),
      const DeepCollectionEquality().hash(mp3Url),
      const DeepCollectionEquality().hash(albumName),
      const DeepCollectionEquality().hash(albumId));

  @JsonKey(ignore: true)
  @override
  _$TrackCopyWith<_Track> get copyWith =>
      __$TrackCopyWithImpl<_Track>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackToJson(this);
  }
}

abstract class _Track extends Track {
  const factory _Track(
      {required String id,
      required String name,
      required String artistName,
      required String artistId,
      @JsonKey(name: 'previewURL') required String mp3Url,
      required String albumName,
      required String albumId}) = _$_Track;
  const _Track._() : super._();

  factory _Track.fromJson(Map<String, dynamic> json) = _$_Track.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get artistName;
  @override
  String get artistId;
  @override
  @JsonKey(name: 'previewURL')
  String get mp3Url;
  @override
  String get albumName;
  @override
  String get albumId;
  @override
  @JsonKey(ignore: true)
  _$TrackCopyWith<_Track> get copyWith => throw _privateConstructorUsedError;
}
