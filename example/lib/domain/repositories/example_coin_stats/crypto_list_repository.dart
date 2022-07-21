import 'package:example/_import.dart';

class CryptoListRepository extends Repository {
  CryptoListRepository({required super.restClient});

  Future<Result<CryptoData>> getCryptoData() async =>
      await restClient.get(ApiUrl.coins, CryptoData.fromJson);
}
