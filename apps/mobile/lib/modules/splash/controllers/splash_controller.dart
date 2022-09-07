import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/modules/app/app_module.dart';

class SplashController {
  SplashController() {
    _initSplash();
  }

  _initSplash() async {
    await Modular.isModuleReady<AppModule>();
    Modular.to.navigate('/home/attractions/');
  }
}
