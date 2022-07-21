// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CryptoData _$$_CryptoDataFromJson(Map<String, dynamic> json) =>
    _$_CryptoData(
      coins: (json['coins'] as List<dynamic>)
          .map((e) => Crypto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CryptoDataToJson(_$_CryptoData instance) =>
    <String, dynamic>{
      'coins': instance.coins,
    };
