// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackStateTearOff {
  const _$TrackStateTearOff();

  TrackStateInitial initial() {
    return const TrackStateInitial();
  }

  TrackStateLoading loading() {
    return const TrackStateLoading();
  }

  TrackStateSuccess success(List<Track> tracks) {
    return TrackStateSuccess(
      tracks,
    );
  }

  TrackStateError error(String message) {
    return TrackStateError(
      message,
    );
  }
}

/// @nodoc
const $TrackState = _$TrackStateTearOff();

/// @nodoc
mixin _$TrackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Track> tracks) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackStateInitial value) initial,
    required TResult Function(TrackStateLoading value) loading,
    required TResult Function(TrackStateSuccess value) success,
    required TResult Function(TrackStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackStateCopyWith<$Res> {
  factory $TrackStateCopyWith(
          TrackState value, $Res Function(TrackState) then) =
      _$TrackStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackStateCopyWithImpl<$Res> implements $TrackStateCopyWith<$Res> {
  _$TrackStateCopyWithImpl(this._value, this._then);

  final TrackState _value;
  // ignore: unused_field
  final $Res Function(TrackState) _then;
}

/// @nodoc
abstract class $TrackStateInitialCopyWith<$Res> {
  factory $TrackStateInitialCopyWith(
          TrackStateInitial value, $Res Function(TrackStateInitial) then) =
      _$TrackStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackStateInitialCopyWithImpl<$Res>
    extends _$TrackStateCopyWithImpl<$Res>
    implements $TrackStateInitialCopyWith<$Res> {
  _$TrackStateInitialCopyWithImpl(
      TrackStateInitial _value, $Res Function(TrackStateInitial) _then)
      : super(_value, (v) => _then(v as TrackStateInitial));

  @override
  TrackStateInitial get _value => super._value as TrackStateInitial;
}

/// @nodoc

class _$TrackStateInitial implements TrackStateInitial {
  const _$TrackStateInitial();

  @override
  String toString() {
    return 'TrackState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TrackStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Track> tracks) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
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
    required TResult Function(TrackStateInitial value) initial,
    required TResult Function(TrackStateLoading value) loading,
    required TResult Function(TrackStateSuccess value) success,
    required TResult Function(TrackStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TrackStateInitial implements TrackState {
  const factory TrackStateInitial() = _$TrackStateInitial;
}

/// @nodoc
abstract class $TrackStateLoadingCopyWith<$Res> {
  factory $TrackStateLoadingCopyWith(
          TrackStateLoading value, $Res Function(TrackStateLoading) then) =
      _$TrackStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackStateLoadingCopyWithImpl<$Res>
    extends _$TrackStateCopyWithImpl<$Res>
    implements $TrackStateLoadingCopyWith<$Res> {
  _$TrackStateLoadingCopyWithImpl(
      TrackStateLoading _value, $Res Function(TrackStateLoading) _then)
      : super(_value, (v) => _then(v as TrackStateLoading));

  @override
  TrackStateLoading get _value => super._value as TrackStateLoading;
}

/// @nodoc

class _$TrackStateLoading implements TrackStateLoading {
  const _$TrackStateLoading();

  @override
  String toString() {
    return 'TrackState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TrackStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Track> tracks) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
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
    required TResult Function(TrackStateInitial value) initial,
    required TResult Function(TrackStateLoading value) loading,
    required TResult Function(TrackStateSuccess value) success,
    required TResult Function(TrackStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TrackStateLoading implements TrackState {
  const factory TrackStateLoading() = _$TrackStateLoading;
}

/// @nodoc
abstract class $TrackStateSuccessCopyWith<$Res> {
  factory $TrackStateSuccessCopyWith(
          TrackStateSuccess value, $Res Function(TrackStateSuccess) then) =
      _$TrackStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Track> tracks});
}

/// @nodoc
class _$TrackStateSuccessCopyWithImpl<$Res>
    extends _$TrackStateCopyWithImpl<$Res>
    implements $TrackStateSuccessCopyWith<$Res> {
  _$TrackStateSuccessCopyWithImpl(
      TrackStateSuccess _value, $Res Function(TrackStateSuccess) _then)
      : super(_value, (v) => _then(v as TrackStateSuccess));

  @override
  TrackStateSuccess get _value => super._value as TrackStateSuccess;

  @override
  $Res call({
    Object? tracks = freezed,
  }) {
    return _then(TrackStateSuccess(
      tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
    ));
  }
}

/// @nodoc

class _$TrackStateSuccess implements TrackStateSuccess {
  const _$TrackStateSuccess(this.tracks);

  @override
  final List<Track> tracks;

  @override
  String toString() {
    return 'TrackState.success(tracks: $tracks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrackStateSuccess &&
            const DeepCollectionEquality().equals(other.tracks, tracks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tracks));

  @JsonKey(ignore: true)
  @override
  $TrackStateSuccessCopyWith<TrackStateSuccess> get copyWith =>
      _$TrackStateSuccessCopyWithImpl<TrackStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Track> tracks) success,
    required TResult Function(String message) error,
  }) {
    return success(tracks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
    TResult Function(String message)? error,
  }) {
    return success?.call(tracks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tracks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackStateInitial value) initial,
    required TResult Function(TrackStateLoading value) loading,
    required TResult Function(TrackStateSuccess value) success,
    required TResult Function(TrackStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TrackStateSuccess implements TrackState {
  const factory TrackStateSuccess(List<Track> tracks) = _$TrackStateSuccess;

  List<Track> get tracks;
  @JsonKey(ignore: true)
  $TrackStateSuccessCopyWith<TrackStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackStateErrorCopyWith<$Res> {
  factory $TrackStateErrorCopyWith(
          TrackStateError value, $Res Function(TrackStateError) then) =
      _$TrackStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$TrackStateErrorCopyWithImpl<$Res> extends _$TrackStateCopyWithImpl<$Res>
    implements $TrackStateErrorCopyWith<$Res> {
  _$TrackStateErrorCopyWithImpl(
      TrackStateError _value, $Res Function(TrackStateError) _then)
      : super(_value, (v) => _then(v as TrackStateError));

  @override
  TrackStateError get _value => super._value as TrackStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(TrackStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrackStateError implements TrackStateError {
  const _$TrackStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TrackState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrackStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $TrackStateErrorCopyWith<TrackStateError> get copyWith =>
      _$TrackStateErrorCopyWithImpl<TrackStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Track> tracks) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Track> tracks)? success,
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
    required TResult Function(TrackStateInitial value) initial,
    required TResult Function(TrackStateLoading value) loading,
    required TResult Function(TrackStateSuccess value) success,
    required TResult Function(TrackStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackStateInitial value)? initial,
    TResult Function(TrackStateLoading value)? loading,
    TResult Function(TrackStateSuccess value)? success,
    TResult Function(TrackStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TrackStateError implements TrackState {
  const factory TrackStateError(String message) = _$TrackStateError;

  String get message;
  @JsonKey(ignore: true)
  $TrackStateErrorCopyWith<TrackStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
