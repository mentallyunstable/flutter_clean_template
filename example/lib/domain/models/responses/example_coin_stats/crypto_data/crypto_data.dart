import 'package:freezed_annotation/freezed_annotation.dart';

import '../crypto/crypto.dart';

part 'crypto_data.freezed.dart';
part 'crypto_data.g.dart';

@freezed
class CryptoData with _$CryptoData {
  const factory CryptoData({
    required List<Crypto> coins,
  }) = _CryptoData;

  factory CryptoData.fromJson(Map<String, dynamic> json) =>
      _$CryptoDataFromJson(json);
}
