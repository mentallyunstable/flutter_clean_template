// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoData _$CryptoDataFromJson(Map<String, dynamic> json) {
  return _CryptoData.fromJson(json);
}

/// @nodoc
mixin _$CryptoData {
  List<Crypto> get coins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoDataCopyWith<CryptoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoDataCopyWith<$Res> {
  factory $CryptoDataCopyWith(
          CryptoData value, $Res Function(CryptoData) then) =
      _$CryptoDataCopyWithImpl<$Res>;
  $Res call({List<Crypto> coins});
}

/// @nodoc
class _$CryptoDataCopyWithImpl<$Res> implements $CryptoDataCopyWith<$Res> {
  _$CryptoDataCopyWithImpl(this._value, this._then);

  final CryptoData _value;
  // ignore: unused_field
  final $Res Function(CryptoData) _then;

  @override
  $Res call({
    Object? coins = freezed,
  }) {
    return _then(_value.copyWith(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Crypto>,
    ));
  }
}

/// @nodoc
abstract class _$$_CryptoDataCopyWith<$Res>
    implements $CryptoDataCopyWith<$Res> {
  factory _$$_CryptoDataCopyWith(
          _$_CryptoData value, $Res Function(_$_CryptoData) then) =
      __$$_CryptoDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Crypto> coins});
}

/// @nodoc
class __$$_CryptoDataCopyWithImpl<$Res> extends _$CryptoDataCopyWithImpl<$Res>
    implements _$$_CryptoDataCopyWith<$Res> {
  __$$_CryptoDataCopyWithImpl(
      _$_CryptoData _value, $Res Function(_$_CryptoData) _then)
      : super(_value, (v) => _then(v as _$_CryptoData));

  @override
  _$_CryptoData get _value => super._value as _$_CryptoData;

  @override
  $Res call({
    Object? coins = freezed,
  }) {
    return _then(_$_CryptoData(
      coins: coins == freezed
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Crypto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptoData implements _CryptoData {
  const _$_CryptoData({required final List<Crypto> coins}) : _coins = coins;

  factory _$_CryptoData.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoDataFromJson(json);

  final List<Crypto> _coins;
  @override
  List<Crypto> get coins {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  String toString() {
    return 'CryptoData(coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoData &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coins));

  @JsonKey(ignore: true)
  @override
  _$$_CryptoDataCopyWith<_$_CryptoData> get copyWith =>
      __$$_CryptoDataCopyWithImpl<_$_CryptoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoDataToJson(
      this,
    );
  }
}

abstract class _CryptoData implements CryptoData {
  const factory _CryptoData({required final List<Crypto> coins}) =
      _$_CryptoData;

  factory _CryptoData.fromJson(Map<String, dynamic> json) =
      _$_CryptoData.fromJson;

  @override
  List<Crypto> get coins;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoDataCopyWith<_$_CryptoData> get copyWith =>
      throw _privateConstructorUsedError;
}
