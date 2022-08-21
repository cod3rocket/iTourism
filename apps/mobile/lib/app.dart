import 'package:flutter/material.dart';

import 'package:itourism_mobile/pages/home/home_page.dart';

class ITourismApp extends StatelessWidget {
  const ITourismApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iTourism',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'iTourism demo home page'),
    );
  }
}
