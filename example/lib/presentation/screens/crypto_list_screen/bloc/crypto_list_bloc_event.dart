import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_list_bloc_event.freezed.dart';

@freezed
class CryptoListBlocEvent with _$CryptoListBlocEvent {
  const factory CryptoListBlocEvent.load() = LoadCryptoListBlocEvent;
}
