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
      body: BlocBuilder<CryptoListBloc, CryptoListBlocState>(
        builder: (context, state) => state.maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (CryptoData data) => ListView.builder(
            itemCount: data.coins.length,
            itemBuilder: (context, index) => Text(
              data.coins[index].name,
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          ),
          orElse: () => Container(),
        ),
      ),
    );
  }
}
