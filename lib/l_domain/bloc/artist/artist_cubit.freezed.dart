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

  ArtistStateInitial initial() {
    return const ArtistStateInitial();
  }

  ArtistStateLoading loading() {
    return const ArtistStateLoading();
  }

  ArtistStateTopSuccess topSuccess(List<Artist> artists) {
    return ArtistStateTopSuccess(
      artists,
    );
  }

  ArtistStateSearchSuccess searchSuccess(List<Artist> artists) {
    return ArtistStateSearchSuccess(
      artists,
    );
  }

  ArtistStateError error(String message) {
    return ArtistStateError(
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
    required TResult Function(List<Artist> artists) topSuccess,
    required TResult Function(List<Artist> artists) searchSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistStateInitial value) initial,
    required TResult Function(ArtistStateLoading value) loading,
    required TResult Function(ArtistStateTopSuccess value) topSuccess,
    required TResult Function(ArtistStateSearchSuccess value) searchSuccess,
    required TResult Function(ArtistStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
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
abstract class $ArtistStateInitialCopyWith<$Res> {
  factory $ArtistStateInitialCopyWith(
          ArtistStateInitial value, $Res Function(ArtistStateInitial) then) =
      _$ArtistStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtistStateInitialCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements $ArtistStateInitialCopyWith<$Res> {
  _$ArtistStateInitialCopyWithImpl(
      ArtistStateInitial _value, $Res Function(ArtistStateInitial) _then)
      : super(_value, (v) => _then(v as ArtistStateInitial));

  @override
  ArtistStateInitial get _value => super._value as ArtistStateInitial;
}

/// @nodoc

class _$ArtistStateInitial implements ArtistStateInitial {
  const _$ArtistStateInitial();

  @override
  String toString() {
    return 'ArtistState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ArtistStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists) topSuccess,
    required TResult Function(List<Artist> artists) searchSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
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
    required TResult Function(ArtistStateInitial value) initial,
    required TResult Function(ArtistStateLoading value) loading,
    required TResult Function(ArtistStateTopSuccess value) topSuccess,
    required TResult Function(ArtistStateSearchSuccess value) searchSuccess,
    required TResult Function(ArtistStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArtistStateInitial implements ArtistState {
  const factory ArtistStateInitial() = _$ArtistStateInitial;
}

/// @nodoc
abstract class $ArtistStateLoadingCopyWith<$Res> {
  factory $ArtistStateLoadingCopyWith(
          ArtistStateLoading value, $Res Function(ArtistStateLoading) then) =
      _$ArtistStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtistStateLoadingCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements $ArtistStateLoadingCopyWith<$Res> {
  _$ArtistStateLoadingCopyWithImpl(
      ArtistStateLoading _value, $Res Function(ArtistStateLoading) _then)
      : super(_value, (v) => _then(v as ArtistStateLoading));

  @override
  ArtistStateLoading get _value => super._value as ArtistStateLoading;
}

/// @nodoc

class _$ArtistStateLoading implements ArtistStateLoading {
  const _$ArtistStateLoading();

  @override
  String toString() {
    return 'ArtistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ArtistStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists) topSuccess,
    required TResult Function(List<Artist> artists) searchSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
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
    required TResult Function(ArtistStateInitial value) initial,
    required TResult Function(ArtistStateLoading value) loading,
    required TResult Function(ArtistStateTopSuccess value) topSuccess,
    required TResult Function(ArtistStateSearchSuccess value) searchSuccess,
    required TResult Function(ArtistStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArtistStateLoading implements ArtistState {
  const factory ArtistStateLoading() = _$ArtistStateLoading;
}

/// @nodoc
abstract class $ArtistStateTopSuccessCopyWith<$Res> {
  factory $ArtistStateTopSuccessCopyWith(ArtistStateTopSuccess value,
          $Res Function(ArtistStateTopSuccess) then) =
      _$ArtistStateTopSuccessCopyWithImpl<$Res>;
  $Res call({List<Artist> artists});
}

/// @nodoc
class _$ArtistStateTopSuccessCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements $ArtistStateTopSuccessCopyWith<$Res> {
  _$ArtistStateTopSuccessCopyWithImpl(
      ArtistStateTopSuccess _value, $Res Function(ArtistStateTopSuccess) _then)
      : super(_value, (v) => _then(v as ArtistStateTopSuccess));

  @override
  ArtistStateTopSuccess get _value => super._value as ArtistStateTopSuccess;

  @override
  $Res call({
    Object? artists = freezed,
  }) {
    return _then(ArtistStateTopSuccess(
      artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$ArtistStateTopSuccess implements ArtistStateTopSuccess {
  const _$ArtistStateTopSuccess(this.artists);

  @override
  final List<Artist> artists;

  @override
  String toString() {
    return 'ArtistState.topSuccess(artists: $artists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArtistStateTopSuccess &&
            const DeepCollectionEquality().equals(other.artists, artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(artists));

  @JsonKey(ignore: true)
  @override
  $ArtistStateTopSuccessCopyWith<ArtistStateTopSuccess> get copyWith =>
      _$ArtistStateTopSuccessCopyWithImpl<ArtistStateTopSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists) topSuccess,
    required TResult Function(List<Artist> artists) searchSuccess,
    required TResult Function(String message) error,
  }) {
    return topSuccess(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return topSuccess?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (topSuccess != null) {
      return topSuccess(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistStateInitial value) initial,
    required TResult Function(ArtistStateLoading value) loading,
    required TResult Function(ArtistStateTopSuccess value) topSuccess,
    required TResult Function(ArtistStateSearchSuccess value) searchSuccess,
    required TResult Function(ArtistStateError value) error,
  }) {
    return topSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
  }) {
    return topSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
    required TResult orElse(),
  }) {
    if (topSuccess != null) {
      return topSuccess(this);
    }
    return orElse();
  }
}

abstract class ArtistStateTopSuccess implements ArtistState {
  const factory ArtistStateTopSuccess(List<Artist> artists) =
      _$ArtistStateTopSuccess;

  List<Artist> get artists;
  @JsonKey(ignore: true)
  $ArtistStateTopSuccessCopyWith<ArtistStateTopSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStateSearchSuccessCopyWith<$Res> {
  factory $ArtistStateSearchSuccessCopyWith(ArtistStateSearchSuccess value,
          $Res Function(ArtistStateSearchSuccess) then) =
      _$ArtistStateSearchSuccessCopyWithImpl<$Res>;
  $Res call({List<Artist> artists});
}

/// @nodoc
class _$ArtistStateSearchSuccessCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements $ArtistStateSearchSuccessCopyWith<$Res> {
  _$ArtistStateSearchSuccessCopyWithImpl(ArtistStateSearchSuccess _value,
      $Res Function(ArtistStateSearchSuccess) _then)
      : super(_value, (v) => _then(v as ArtistStateSearchSuccess));

  @override
  ArtistStateSearchSuccess get _value =>
      super._value as ArtistStateSearchSuccess;

  @override
  $Res call({
    Object? artists = freezed,
  }) {
    return _then(ArtistStateSearchSuccess(
      artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$ArtistStateSearchSuccess implements ArtistStateSearchSuccess {
  const _$ArtistStateSearchSuccess(this.artists);

  @override
  final List<Artist> artists;

  @override
  String toString() {
    return 'ArtistState.searchSuccess(artists: $artists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArtistStateSearchSuccess &&
            const DeepCollectionEquality().equals(other.artists, artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(artists));

  @JsonKey(ignore: true)
  @override
  $ArtistStateSearchSuccessCopyWith<ArtistStateSearchSuccess> get copyWith =>
      _$ArtistStateSearchSuccessCopyWithImpl<ArtistStateSearchSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists) topSuccess,
    required TResult Function(List<Artist> artists) searchSuccess,
    required TResult Function(String message) error,
  }) {
    return searchSuccess(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return searchSuccess?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistStateInitial value) initial,
    required TResult Function(ArtistStateLoading value) loading,
    required TResult Function(ArtistStateTopSuccess value) topSuccess,
    required TResult Function(ArtistStateSearchSuccess value) searchSuccess,
    required TResult Function(ArtistStateError value) error,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class ArtistStateSearchSuccess implements ArtistState {
  const factory ArtistStateSearchSuccess(List<Artist> artists) =
      _$ArtistStateSearchSuccess;

  List<Artist> get artists;
  @JsonKey(ignore: true)
  $ArtistStateSearchSuccessCopyWith<ArtistStateSearchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStateErrorCopyWith<$Res> {
  factory $ArtistStateErrorCopyWith(
          ArtistStateError value, $Res Function(ArtistStateError) then) =
      _$ArtistStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ArtistStateErrorCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements $ArtistStateErrorCopyWith<$Res> {
  _$ArtistStateErrorCopyWithImpl(
      ArtistStateError _value, $Res Function(ArtistStateError) _then)
      : super(_value, (v) => _then(v as ArtistStateError));

  @override
  ArtistStateError get _value => super._value as ArtistStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ArtistStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArtistStateError implements ArtistStateError {
  const _$ArtistStateError(this.message);

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
            other is ArtistStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ArtistStateErrorCopyWith<ArtistStateError> get copyWith =>
      _$ArtistStateErrorCopyWithImpl<ArtistStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Artist> artists) topSuccess,
    required TResult Function(List<Artist> artists) searchSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Artist> artists)? topSuccess,
    TResult Function(List<Artist> artists)? searchSuccess,
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
    required TResult Function(ArtistStateInitial value) initial,
    required TResult Function(ArtistStateLoading value) loading,
    required TResult Function(ArtistStateTopSuccess value) topSuccess,
    required TResult Function(ArtistStateSearchSuccess value) searchSuccess,
    required TResult Function(ArtistStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistStateInitial value)? initial,
    TResult Function(ArtistStateLoading value)? loading,
    TResult Function(ArtistStateTopSuccess value)? topSuccess,
    TResult Function(ArtistStateSearchSuccess value)? searchSuccess,
    TResult Function(ArtistStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ArtistStateError implements ArtistState {
  const factory ArtistStateError(String message) = _$ArtistStateError;

  String get message;
  @JsonKey(ignore: true)
  $ArtistStateErrorCopyWith<ArtistStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
