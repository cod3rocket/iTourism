import 'package:flutter/material.dart';

class AttractionPage extends StatelessWidget {
  final String attractionId;

  const AttractionPage({Key? key, required this.attractionId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AttractionPage'),
      ),
      body: const Center(
        child: Text(
          'WIP - AttractionPage',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
