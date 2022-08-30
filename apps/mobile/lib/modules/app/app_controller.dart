import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  int pageIndex = 0;

  @action
  setPage(int newPageIndex) {
    pageIndex = newPageIndex;
    if (pageIndex == 0) {
      Modular.to.navigate('/attractions/');
    } else if (pageIndex == 1) {
      Modular.to.navigate('/events/');
    } else if (pageIndex == 2) {
      Modular.to.navigate('/public-utility/');
    }
  }
}
