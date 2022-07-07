import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Provides all app [Bloc] instances.
class AppBlocProvider extends StatelessWidget {
  final Widget child;

  const AppBlocProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [
        /// Add all your BlocProvider<Bloc> here
      ],
      child: child,
    );
  }
}
