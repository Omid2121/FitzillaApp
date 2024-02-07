import 'package:flutter/material.dart';

class ExerciseTemplatesScreen extends StatelessWidget {
  const ExerciseTemplatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise Templates'),
      ),
      body: const Center(
        child: Text('Exercise Templates'),
      ),
    );
  }
}
