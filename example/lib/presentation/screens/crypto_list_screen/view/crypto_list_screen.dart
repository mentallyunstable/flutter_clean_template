import 'package:example/_import.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({Key? key}) : super(key: key);

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies'),
      ),
      body: RefreshIndicator(
        onRefresh: () async => context
            .read<CryptoListBloc>()
            .add(const CryptoListBlocEvent.load()),
        child: BlocBuilder<CryptoListBloc, CryptoListBlocState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const AppLoadingIndicator(),
            loaded: (CryptoData data) => ListView.builder(
              itemCount: data.coins.length,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              itemBuilder: (context, index) => CryptoListItem(
                crypto: data.coins[index],
              ),
            ),
            error: (error) => const AppErrorIcon(),
            orElse: () => Container(),
          ),
        ),
      ),
    );
  }
}
