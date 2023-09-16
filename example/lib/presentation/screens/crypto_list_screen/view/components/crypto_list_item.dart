import 'package:example/_import.dart';
import 'package:flutter/material.dart';

class CryptoListItem extends StatelessWidget {
  final Crypto crypto;

  const CryptoListItem({Key? key, required this.crypto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.network(
            crypto.icon,
            width: 60,
            height: 60,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  crypto.name,
                  style: theme.textTheme.bodyText1,
                ),
                Text(
                  crypto.symbol,
                  style: theme.textTheme.bodyText2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '#${crypto.rank}',
                  style: theme.textTheme.bodyText1,
                ),
                Text(
                  crypto.price.toStringAsFixed(3),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
