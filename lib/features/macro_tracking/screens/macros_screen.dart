import 'package:flutter/material.dart';

class MacrosScreen extends StatelessWidget {
  const MacrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Macros'),
      ),
      body: const Center(
        child: Text('Macros'),
      ),
    );
  }
}
