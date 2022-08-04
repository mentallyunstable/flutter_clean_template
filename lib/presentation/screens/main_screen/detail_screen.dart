import 'package:clean_template/_import.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String data;
  const DetailScreen({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("DETAIL SCREEN"),
            TextButton(
              onPressed: () {
                context.router.pop();
              },
              child: Text("BACK"),
            )
          ],
        ),
      ),
    );
  }
}
