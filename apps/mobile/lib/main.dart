import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/app/app_module.dart';
import 'package:itourism_mobile/modules/app/components/app_widget.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
