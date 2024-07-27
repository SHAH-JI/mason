import 'package:flutter/material.dart';

/// Main Start Screen for the app
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: const Center(
        child: Text('Main Screen'),
      ),
    );
  }
}