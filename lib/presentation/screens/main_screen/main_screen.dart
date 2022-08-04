import 'package:clean_template/_import.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MAIN SCREEN"),
            TextButton(
              child: Text("asd"),
              onPressed: () {
                // context.router.push();
              },
            ),
          ],
        ),
      ),
    );
  }
}
