// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_list_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CryptoListBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCryptoListBlocEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCryptoListBlocEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCryptoListBlocEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoListBlocEventCopyWith<$Res> {
  factory $CryptoListBlocEventCopyWith(
          CryptoListBlocEvent value, $Res Function(CryptoListBlocEvent) then) =
      _$CryptoListBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoListBlocEventCopyWithImpl<$Res>
    implements $CryptoListBlocEventCopyWith<$Res> {
  _$CryptoListBlocEventCopyWithImpl(this._value, this._then);

  final CryptoListBlocEvent _value;
  // ignore: unused_field
  final $Res Function(CryptoListBlocEvent) _then;
}

/// @nodoc
abstract class _$$LoadCryptoListBlocEventCopyWith<$Res> {
  factory _$$LoadCryptoListBlocEventCopyWith(_$LoadCryptoListBlocEvent value,
          $Res Function(_$LoadCryptoListBlocEvent) then) =
      __$$LoadCryptoListBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCryptoListBlocEventCopyWithImpl<$Res>
    extends _$CryptoListBlocEventCopyWithImpl<$Res>
    implements _$$LoadCryptoListBlocEventCopyWith<$Res> {
  __$$LoadCryptoListBlocEventCopyWithImpl(_$LoadCryptoListBlocEvent _value,
      $Res Function(_$LoadCryptoListBlocEvent) _then)
      : super(_value, (v) => _then(v as _$LoadCryptoListBlocEvent));

  @override
  _$LoadCryptoListBlocEvent get _value =>
      super._value as _$LoadCryptoListBlocEvent;
}

/// @nodoc

class _$LoadCryptoListBlocEvent implements LoadCryptoListBlocEvent {
  const _$LoadCryptoListBlocEvent();

  @override
  String toString() {
    return 'CryptoListBlocEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCryptoListBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCryptoListBlocEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCryptoListBlocEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCryptoListBlocEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadCryptoListBlocEvent implements CryptoListBlocEvent {
  const factory LoadCryptoListBlocEvent() = _$LoadCryptoListBlocEvent;
}
