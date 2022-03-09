// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArtistStateTearOff {
  const _$ArtistStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _TopSuccess topSuccess(List<Artist> artists, bool allLoaded) {
    return _TopSuccess(
      artists,
      allLoaded,
    );
  }

  _SearchSuccess searchSuccess(List<Artist> artists, bool allLoaded) {
    return _SearchSuccess(
      artists,
      allLoaded,
    );
  }

  _Error error(String message) {
    return _Error(
      message,
    );
  }
}

/// @nodoc
const $ArtistState = _$ArtistStateTearOff();

/// @nodoc
mixin _$ArtistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists, bool allLoaded) topSuccess,
    required TResult Function(List<Artist> artists, bool allLoaded)
        searchSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TopSuccess value) topSuccess,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStateCopyWith<$Res> {
  factory $ArtistStateCopyWith(
          ArtistState value, $Res Function(ArtistState) then) =
      _$ArtistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtistStateCopyWithImpl<$Res> implements $ArtistStateCopyWith<$Res> {
  _$ArtistStateCopyWithImpl(this._value, this._then);

  final ArtistState _value;
  // ignore: unused_field
  final $Res Function(ArtistState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ArtistStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ArtistState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists, bool allLoaded) topSuccess,
    required TResult Function(List<Artist> artists, bool allLoaded)
        searchSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TopSuccess value) topSuccess,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArtistState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ArtistStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ArtistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists, bool allLoaded) topSuccess,
    required TResult Function(List<Artist> artists, bool allLoaded)
        searchSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TopSuccess value) topSuccess,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArtistState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$TopSuccessCopyWith<$Res> {
  factory _$TopSuccessCopyWith(
          _TopSuccess value, $Res Function(_TopSuccess) then) =
      __$TopSuccessCopyWithImpl<$Res>;
  $Res call({List<Artist> artists, bool allLoaded});
}

/// @nodoc
class __$TopSuccessCopyWithImpl<$Res> extends _$ArtistStateCopyWithImpl<$Res>
    implements _$TopSuccessCopyWith<$Res> {
  __$TopSuccessCopyWithImpl(
      _TopSuccess _value, $Res Function(_TopSuccess) _then)
      : super(_value, (v) => _then(v as _TopSuccess));

  @override
  _TopSuccess get _value => super._value as _TopSuccess;

  @override
  $Res call({
    Object? artists = freezed,
    Object? allLoaded = freezed,
  }) {
    return _then(_TopSuccess(
      artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      allLoaded == freezed
          ? _value.allLoaded
          : allLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TopSuccess implements _TopSuccess {
  const _$_TopSuccess(this.artists, this.allLoaded);

  @override
  final List<Artist> artists;
  @override
  final bool allLoaded;

  @override
  String toString() {
    return 'ArtistState.topSuccess(artists: $artists, allLoaded: $allLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopSuccess &&
            const DeepCollectionEquality().equals(other.artists, artists) &&
            const DeepCollectionEquality().equals(other.allLoaded, allLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(artists),
      const DeepCollectionEquality().hash(allLoaded));

  @JsonKey(ignore: true)
  @override
  _$TopSuccessCopyWith<_TopSuccess> get copyWith =>
      __$TopSuccessCopyWithImpl<_TopSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists, bool allLoaded) topSuccess,
    required TResult Function(List<Artist> artists, bool allLoaded)
        searchSuccess,
    required TResult Function(String message) error,
  }) {
    return topSuccess(artists, allLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return topSuccess?.call(artists, allLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (topSuccess != null) {
      return topSuccess(artists, allLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TopSuccess value) topSuccess,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_Error value) error,
  }) {
    return topSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
  }) {
    return topSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (topSuccess != null) {
      return topSuccess(this);
    }
    return orElse();
  }
}

abstract class _TopSuccess implements ArtistState {
  const factory _TopSuccess(List<Artist> artists, bool allLoaded) =
      _$_TopSuccess;

  List<Artist> get artists;
  bool get allLoaded;
  @JsonKey(ignore: true)
  _$TopSuccessCopyWith<_TopSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(
          _SearchSuccess value, $Res Function(_SearchSuccess) then) =
      __$SearchSuccessCopyWithImpl<$Res>;
  $Res call({List<Artist> artists, bool allLoaded});
}

/// @nodoc
class __$SearchSuccessCopyWithImpl<$Res> extends _$ArtistStateCopyWithImpl<$Res>
    implements _$SearchSuccessCopyWith<$Res> {
  __$SearchSuccessCopyWithImpl(
      _SearchSuccess _value, $Res Function(_SearchSuccess) _then)
      : super(_value, (v) => _then(v as _SearchSuccess));

  @override
  _SearchSuccess get _value => super._value as _SearchSuccess;

  @override
  $Res call({
    Object? artists = freezed,
    Object? allLoaded = freezed,
  }) {
    return _then(_SearchSuccess(
      artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      allLoaded == freezed
          ? _value.allLoaded
          : allLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.artists, this.allLoaded);

  @override
  final List<Artist> artists;
  @override
  final bool allLoaded;

  @override
  String toString() {
    return 'ArtistState.searchSuccess(artists: $artists, allLoaded: $allLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchSuccess &&
            const DeepCollectionEquality().equals(other.artists, artists) &&
            const DeepCollectionEquality().equals(other.allLoaded, allLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(artists),
      const DeepCollectionEquality().hash(allLoaded));

  @JsonKey(ignore: true)
  @override
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith =>
      __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists, bool allLoaded) topSuccess,
    required TResult Function(List<Artist> artists, bool allLoaded)
        searchSuccess,
    required TResult Function(String message) error,
  }) {
    return searchSuccess(artists, allLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return searchSuccess?.call(artists, allLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(artists, allLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TopSuccess value) topSuccess,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_Error value) error,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements ArtistState {
  const factory _SearchSuccess(List<Artist> artists, bool allLoaded) =
      _$_SearchSuccess;

  List<Artist> get artists;
  bool get allLoaded;
  @JsonKey(ignore: true)
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ArtistStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists, bool allLoaded) topSuccess,
    required TResult Function(List<Artist> artists, bool allLoaded)
        searchSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists, bool allLoaded)? topSuccess,
    TResult Function(List<Artist> artists, bool allLoaded)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TopSuccess value) topSuccess,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TopSuccess value)? topSuccess,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ArtistState {
  const factory _Error(String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
