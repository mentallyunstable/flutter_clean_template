// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Crypto _$$_CryptoFromJson(Map<String, dynamic> json) => _$_Crypto(
      id: json['id'] as String,
      icon: json['icon'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      rank: json['rank'] as int,
      price: (json['price'] as num).toDouble(),
      priceBitcoin: (json['priceBitcoin'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CryptoToJson(_$_Crypto instance) => <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'symbol': instance.symbol,
      'rank': instance.rank,
      'price': instance.price,
      'priceBitcoin': instance.priceBitcoin,
    };
