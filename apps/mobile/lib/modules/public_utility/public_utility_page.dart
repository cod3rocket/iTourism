import 'package:flutter/material.dart';

class PublicUtilityPage extends StatelessWidget {
  const PublicUtilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utilidade Pública'),
      ),
      body: const Center(
        child: Text('Utilidade Pública'),
      ),
    );
  }
}
