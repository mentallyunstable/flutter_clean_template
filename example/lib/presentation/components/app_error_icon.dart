import 'package:flutter/material.dart';

class AppErrorIcon extends StatelessWidget {
  final String? message;
  final Function()? onPressed;
  final String? buttonTitle;

  const AppErrorIcon({
    Key? key,
    this.message,
    this.onPressed,
    this.buttonTitle,
  })  : assert(onPressed == null && buttonTitle == null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline),
          if (message != null) Text(message!),
          if (onPressed != null)
            ElevatedButton(
              onPressed: onPressed,
              child: Text(buttonTitle!),
            ),
        ],
      ),
    );
  }
}
