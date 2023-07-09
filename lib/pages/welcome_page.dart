import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('Bienvenido'),
          ],
        ),
      ),
    );
  }
}
