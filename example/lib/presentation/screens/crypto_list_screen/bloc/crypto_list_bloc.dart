import 'package:example/_import.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoListBloc extends Bloc<CryptoListBlocEvent, CryptoListBlocState> {
  final CryptoListRepository _repository;

  CryptoListBloc({required CryptoListRepository repository})
      : _repository = repository,
        super(const CryptoListBlocState.initial()) {
    on<LoadCryptoListBlocEvent>(_onLoadCryptoListBlocEvent);
  }

  Future _onLoadCryptoListBlocEvent(
      LoadCryptoListBlocEvent event, Emitter<CryptoListBlocState> emit) async {
    try {
      emit(const CryptoListBlocState.loading());

      final Result<CryptoData> result = await _repository.getCryptoData();

      if (result is SuccessfulResult) {
        emit(CryptoListBlocState.loaded((result as SuccessfulResult).data));
      } else {
        emit(const CryptoListBlocState.error());
      }
    } catch (exception, stackTrace) {
      DebugLogger.logException(exception, stackTrace);
    }
  }
}
