// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfulResult<T> value) success,
    required TResult Function(ErrorResult<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SuccessfulResult<T> value)? success,
    TResult Function(ErrorResult<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfulResult<T> value)? success,
    TResult Function(ErrorResult<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res> implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T> _value;
  // ignore: unused_field
  final $Res Function(Result<T>) _then;
}

/// @nodoc
abstract class _$$SuccessfulResultCopyWith<T, $Res> {
  factory _$$SuccessfulResultCopyWith(_$SuccessfulResult<T> value,
          $Res Function(_$SuccessfulResult<T>) then) =
      __$$SuccessfulResultCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$SuccessfulResultCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$SuccessfulResultCopyWith<T, $Res> {
  __$$SuccessfulResultCopyWithImpl(
      _$SuccessfulResult<T> _value, $Res Function(_$SuccessfulResult<T>) _then)
      : super(_value, (v) => _then(v as _$SuccessfulResult<T>));

  @override
  _$SuccessfulResult<T> get _value => super._value as _$SuccessfulResult<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessfulResult<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessfulResult<T> implements SuccessfulResult<T> {
  const _$SuccessfulResult({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulResult<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$SuccessfulResultCopyWith<T, _$SuccessfulResult<T>> get copyWith =>
      __$$SuccessfulResultCopyWithImpl<T, _$SuccessfulResult<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfulResult<T> value) success,
    required TResult Function(ErrorResult<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SuccessfulResult<T> value)? success,
    TResult Function(ErrorResult<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfulResult<T> value)? success,
    TResult Function(ErrorResult<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessfulResult<T> implements Result<T> {
  const factory SuccessfulResult({required final T data}) =
      _$SuccessfulResult<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessfulResultCopyWith<T, _$SuccessfulResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorResultCopyWith<T, $Res> {
  factory _$$ErrorResultCopyWith(
          _$ErrorResult<T> value, $Res Function(_$ErrorResult<T>) then) =
      __$$ErrorResultCopyWithImpl<T, $Res>;
  $Res call({Exception error});
}

/// @nodoc
class __$$ErrorResultCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements _$$ErrorResultCopyWith<T, $Res> {
  __$$ErrorResultCopyWithImpl(
      _$ErrorResult<T> _value, $Res Function(_$ErrorResult<T>) _then)
      : super(_value, (v) => _then(v as _$ErrorResult<T>));

  @override
  _$ErrorResult<T> get _value => super._value as _$ErrorResult<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorResult<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ErrorResult<T> implements ErrorResult<T> {
  const _$ErrorResult({required this.error});

  @override
  final Exception error;

  @override
  String toString() {
    return 'Result<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResult<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ErrorResultCopyWith<T, _$ErrorResult<T>> get copyWith =>
      __$$ErrorResultCopyWithImpl<T, _$ErrorResult<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfulResult<T> value) success,
    required TResult Function(ErrorResult<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SuccessfulResult<T> value)? success,
    TResult Function(ErrorResult<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfulResult<T> value)? success,
    TResult Function(ErrorResult<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorResult<T> implements Result<T> {
  const factory ErrorResult({required final Exception error}) =
      _$ErrorResult<T>;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ErrorResultCopyWith<T, _$ErrorResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
