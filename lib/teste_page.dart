import 'package:flutter/material.dart';

class testePage extends StatelessWidget {
  const testePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dark mode"),
      ),
      body: const Center(child: Text("Oi")),
    );
  }
}
