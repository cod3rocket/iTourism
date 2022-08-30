import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final SharedPreferences _sharedPreferences;

  _HomeControllerBase(this._sharedPreferences) {
    _initState();
  }

  _initState() {
    final savedValue = _sharedPreferences.getInt('value');

    value = savedValue ?? 0;
  }

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
    _sharedPreferences.setInt('value', value);
  }
}
