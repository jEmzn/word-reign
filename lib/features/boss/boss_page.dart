import 'package:flutter/material.dart';

class BossPage extends StatelessWidget {
  const BossPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Boss"),
        backgroundColor: Colors.amber,
      ),
      body: Text('Boss'),
    );

  }
}