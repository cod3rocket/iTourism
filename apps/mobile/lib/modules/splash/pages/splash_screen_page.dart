import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:starbase/starbase.dart';

import '../controllers/splash_controller.dart';

class SplashScreenPage extends StatelessWidget {
  SplashScreenPage({super.key}) {
    Modular.get<SplashController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StarbaseTheme.primaryColor,
      body: Center(
        child: Image.asset('assets/images/notification.png', width: 250),
      ),
    );
  }
}
