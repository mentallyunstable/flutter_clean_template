import 'package:example/_import.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_list_bloc_state.freezed.dart';

@freezed
class CryptoListBlocState with _$CryptoListBlocState {
  const factory CryptoListBlocState.initial() = InitialCryptoListBlocState;
  const factory CryptoListBlocState.loading() = LoadingCryptoListBlocState;
  const factory CryptoListBlocState.loaded(CryptoData data) =
      LoadedCryptoListBlocState;
  const factory CryptoListBlocState.error() = ErrorCryptoListBlocState;
}
