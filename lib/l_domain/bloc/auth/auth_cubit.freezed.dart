// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateInitial initial(bool isRegistration) {
    return AuthStateInitial(
      isRegistration,
    );
  }

  AuthStateLoading loading() {
    return const AuthStateLoading();
  }

  AuthStateSuccess success(String token) {
    return AuthStateSuccess(
      token,
    );
  }

  AuthStateError error(String message) {
    return AuthStateError(
      message,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRegistration) initial,
    required TResult Function() loading,
    required TResult Function(String token) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateInitialCopyWith<$Res> {
  factory $AuthStateInitialCopyWith(
          AuthStateInitial value, $Res Function(AuthStateInitial) then) =
      _$AuthStateInitialCopyWithImpl<$Res>;
  $Res call({bool isRegistration});
}

/// @nodoc
class _$AuthStateInitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateInitialCopyWith<$Res> {
  _$AuthStateInitialCopyWithImpl(
      AuthStateInitial _value, $Res Function(AuthStateInitial) _then)
      : super(_value, (v) => _then(v as AuthStateInitial));

  @override
  AuthStateInitial get _value => super._value as AuthStateInitial;

  @override
  $Res call({
    Object? isRegistration = freezed,
  }) {
    return _then(AuthStateInitial(
      isRegistration == freezed
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateInitial implements AuthStateInitial {
  const _$AuthStateInitial(this.isRegistration);

  @override
  final bool isRegistration;

  @override
  String toString() {
    return 'AuthState.initial(isRegistration: $isRegistration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateInitial &&
            const DeepCollectionEquality()
                .equals(other.isRegistration, isRegistration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isRegistration));

  @JsonKey(ignore: true)
  @override
  $AuthStateInitialCopyWith<AuthStateInitial> get copyWith =>
      _$AuthStateInitialCopyWithImpl<AuthStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRegistration) initial,
    required TResult Function() loading,
    required TResult Function(String token) success,
    required TResult Function(String message) error,
  }) {
    return initial(isRegistration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
    TResult Function(String message)? error,
  }) {
    return initial?.call(isRegistration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isRegistration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStateInitial implements AuthState {
  const factory AuthStateInitial(bool isRegistration) = _$AuthStateInitial;

  bool get isRegistration;
  @JsonKey(ignore: true)
  $AuthStateInitialCopyWith<AuthStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateLoadingCopyWith<$Res> {
  factory $AuthStateLoadingCopyWith(
          AuthStateLoading value, $Res Function(AuthStateLoading) then) =
      _$AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoadingCopyWith<$Res> {
  _$AuthStateLoadingCopyWithImpl(
      AuthStateLoading _value, $Res Function(AuthStateLoading) _then)
      : super(_value, (v) => _then(v as AuthStateLoading));

  @override
  AuthStateLoading get _value => super._value as AuthStateLoading;
}

/// @nodoc

class _$AuthStateLoading implements AuthStateLoading {
  const _$AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRegistration) initial,
    required TResult Function() loading,
    required TResult Function(String token) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
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
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoading;
}

/// @nodoc
abstract class $AuthStateSuccessCopyWith<$Res> {
  factory $AuthStateSuccessCopyWith(
          AuthStateSuccess value, $Res Function(AuthStateSuccess) then) =
      _$AuthStateSuccessCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$AuthStateSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateSuccessCopyWith<$Res> {
  _$AuthStateSuccessCopyWithImpl(
      AuthStateSuccess _value, $Res Function(AuthStateSuccess) _then)
      : super(_value, (v) => _then(v as AuthStateSuccess));

  @override
  AuthStateSuccess get _value => super._value as AuthStateSuccess;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(AuthStateSuccess(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateSuccess implements AuthStateSuccess {
  const _$AuthStateSuccess(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.success(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateSuccess &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  $AuthStateSuccessCopyWith<AuthStateSuccess> get copyWith =>
      _$AuthStateSuccessCopyWithImpl<AuthStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRegistration) initial,
    required TResult Function() loading,
    required TResult Function(String token) success,
    required TResult Function(String message) error,
  }) {
    return success(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
    TResult Function(String message)? error,
  }) {
    return success?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthStateSuccess implements AuthState {
  const factory AuthStateSuccess(String token) = _$AuthStateSuccess;

  String get token;
  @JsonKey(ignore: true)
  $AuthStateSuccessCopyWith<AuthStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateErrorCopyWith<$Res> {
  factory $AuthStateErrorCopyWith(
          AuthStateError value, $Res Function(AuthStateError) then) =
      _$AuthStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AuthStateErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateErrorCopyWith<$Res> {
  _$AuthStateErrorCopyWithImpl(
      AuthStateError _value, $Res Function(AuthStateError) _then)
      : super(_value, (v) => _then(v as AuthStateError));

  @override
  AuthStateError get _value => super._value as AuthStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateError implements AuthStateError {
  const _$AuthStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      _$AuthStateErrorCopyWithImpl<AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRegistration) initial,
    required TResult Function() loading,
    required TResult Function(String token) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRegistration)? initial,
    TResult Function()? loading,
    TResult Function(String token)? success,
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
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError(String message) = _$AuthStateError;

  String get message;
  @JsonKey(ignore: true)
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
