import 'package:flutter/material.dart';

class AttractionsPage extends StatelessWidget {
  const AttractionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locais'),
      ),
      body: const Center(
        child: Text('Locais'),
      ),
    );
  }
}
