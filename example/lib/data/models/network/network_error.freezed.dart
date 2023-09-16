// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function() type,
    required TResult Function(DioError error) dio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function()? type,
    TResult Function(DioError error)? dio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function()? type,
    TResult Function(DioError error)? dio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionNetworkError value) connection,
    required TResult Function(TypeNetworkError value) type,
    required TResult Function(DioNetworkError value) dio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionNetworkError value)? connection,
    TResult Function(TypeNetworkError value)? type,
    TResult Function(DioNetworkError value)? dio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionNetworkError value)? connection,
    TResult Function(TypeNetworkError value)? type,
    TResult Function(DioNetworkError value)? dio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) then) =
      _$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res> implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._value, this._then);

  final NetworkError _value;
  // ignore: unused_field
  final $Res Function(NetworkError) _then;
}

/// @nodoc
abstract class _$$ConnectionNetworkErrorCopyWith<$Res> {
  factory _$$ConnectionNetworkErrorCopyWith(_$ConnectionNetworkError value,
          $Res Function(_$ConnectionNetworkError) then) =
      __$$ConnectionNetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionNetworkErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$ConnectionNetworkErrorCopyWith<$Res> {
  __$$ConnectionNetworkErrorCopyWithImpl(_$ConnectionNetworkError _value,
      $Res Function(_$ConnectionNetworkError) _then)
      : super(_value, (v) => _then(v as _$ConnectionNetworkError));

  @override
  _$ConnectionNetworkError get _value =>
      super._value as _$ConnectionNetworkError;
}

/// @nodoc

class _$ConnectionNetworkError implements ConnectionNetworkError {
  const _$ConnectionNetworkError();

  @override
  String toString() {
    return 'NetworkError.connection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionNetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function() type,
    required TResult Function(DioError error) dio,
  }) {
    return connection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function()? type,
    TResult Function(DioError error)? dio,
  }) {
    return connection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function()? type,
    TResult Function(DioError error)? dio,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionNetworkError value) connection,
    required TResult Function(TypeNetworkError value) type,
    required TResult Function(DioNetworkError value) dio,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionNetworkError value)? connection,
    TResult Function(TypeNetworkError value)? type,
    TResult Function(DioNetworkError value)? dio,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionNetworkError value)? connection,
    TResult Function(TypeNetworkError value)? type,
    TResult Function(DioNetworkError value)? dio,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class ConnectionNetworkError implements NetworkError {
  const factory ConnectionNetworkError() = _$ConnectionNetworkError;
}

/// @nodoc
abstract class _$$TypeNetworkErrorCopyWith<$Res> {
  factory _$$TypeNetworkErrorCopyWith(
          _$TypeNetworkError value, $Res Function(_$TypeNetworkError) then) =
      __$$TypeNetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TypeNetworkErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$TypeNetworkErrorCopyWith<$Res> {
  __$$TypeNetworkErrorCopyWithImpl(
      _$TypeNetworkError _value, $Res Function(_$TypeNetworkError) _then)
      : super(_value, (v) => _then(v as _$TypeNetworkError));

  @override
  _$TypeNetworkError get _value => super._value as _$TypeNetworkError;
}

/// @nodoc

class _$TypeNetworkError implements TypeNetworkError {
  const _$TypeNetworkError();

  @override
  String toString() {
    return 'NetworkError.type()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TypeNetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function() type,
    required TResult Function(DioError error) dio,
  }) {
    return type();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function()? type,
    TResult Function(DioError error)? dio,
  }) {
    return type?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function()? type,
    TResult Function(DioError error)? dio,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionNetworkError value) connection,
    required TResult Function(TypeNetworkError value) type,
    required TResult Function(DioNetworkError value) dio,
  }) {
    return type(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionNetworkError value)? connection,
    TResult Function(TypeNetworkError value)? type,
    TResult Function(DioNetworkError value)? dio,
  }) {
    return type?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionNetworkError value)? connection,
    TResult Function(TypeNetworkError value)? type,
    TResult Function(DioNetworkError value)? dio,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(this);
    }
    return orElse();
  }
}

abstract class TypeNetworkError implements NetworkError {
  const factory TypeNetworkError() = _$TypeNetworkError;
}

/// @nodoc
abstract class _$$DioNetworkErrorCopyWith<$Res> {
  factory _$$DioNetworkErrorCopyWith(
          _$DioNetworkError value, $Res Function(_$DioNetworkError) then) =
      __$$DioNetworkErrorCopyWithImpl<$Res>;
  $Res call({DioError error});
}

/// @nodoc
class __$$DioNetworkErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$$DioNetworkErrorCopyWith<$Res> {
  __$$DioNetworkErrorCopyWithImpl(
      _$DioNetworkError _value, $Res Function(_$DioNetworkError) _then)
      : super(_value, (v) => _then(v as _$DioNetworkError));

  @override
  _$DioNetworkError get _value => super._value as _$DioNetworkError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DioNetworkError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$DioNetworkError implements DioNetworkError {
  const _$DioNetworkError({required this.error});

  @override
  final DioError error;

  @override
  String toString() {
    return 'NetworkError.dio(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DioNetworkError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$DioNetworkErrorCopyWith<_$DioNetworkError> get copyWith =>
      __$$DioNetworkErrorCopyWithImpl<_$DioNetworkError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function() type,
    required TResult Function(DioError error) dio,
  }) {
    return dio(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function()? type,
    TResult Function(DioError error)? dio,
  }) {
    return dio?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function()? type,
    TResult Function(DioError error)? dio,
    required TResult orElse(),
  }) {
    if (dio != null) {
      return dio(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionNetworkError value) connection,
    required TResult Function(TypeNetworkError value) type,
    required TResult Function(DioNetworkError value) dio,
  }) {
    return dio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionNetworkError value)? connection,
    TResult Function(TypeNetworkError value)? type,
    TResult Function(DioNetworkError value)? dio,
  }) {
    return dio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionNetworkError value)? connection,
    TResult Function(TypeNetworkError value)? type,
    TResult Function(DioNetworkError value)? dio,
    required TResult orElse(),
  }) {
    if (dio != null) {
      return dio(this);
    }
    return orElse();
  }
}

abstract class DioNetworkError implements NetworkError {
  const factory DioNetworkError({required final DioError error}) =
      _$DioNetworkError;

  DioError get error;
  @JsonKey(ignore: true)
  _$$DioNetworkErrorCopyWith<_$DioNetworkError> get copyWith =>
      throw _privateConstructorUsedError;
}
