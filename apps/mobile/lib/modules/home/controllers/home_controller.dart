import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int pageIndex = 0;

  @action
  setPage(int newPageIndex) {
    pageIndex = newPageIndex;
    if (pageIndex == 0) {
      Modular.to.navigate('../attractions/');
    } else if (pageIndex == 1) {
      Modular.to.navigate('../events/');
    } else if (pageIndex == 2) {
      Modular.to.navigate('../public-utility/');
    }
  }
}
