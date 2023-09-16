import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto.freezed.dart';
part 'crypto.g.dart';

@freezed
class Crypto with _$Crypto {
  const factory Crypto({
    required String id,
    required String icon,
    required String name,
    required String symbol,
    required int rank,
    required double price,
    required double priceBitcoin,
  }) = _Crypto;

  factory Crypto.fromJson(Map<String, dynamic> json) => _$CryptoFromJson(json);
}
