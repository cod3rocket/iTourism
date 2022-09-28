import 'package:itourism_mobile/modules/public_utility/repositories/public_utility_repository.dart';
import 'package:mobx/mobx.dart';

import '../models/public_utility_model.dart';

part 'public_utility_controller.g.dart';

class PublicUtilityController = _PublicUtilityControllerBase
    with _$PublicUtilityController;

abstract class _PublicUtilityControllerBase with Store {
  final PublicUtilityRepository publicUtilityRepository;

  _PublicUtilityControllerBase(this.publicUtilityRepository) {
    findAll();
  }

  @observable
  List<PublicUtility> publicUtilities = [];

  @observable
  bool loading = false;

  @action
  Future<void> findAll() async {
    loading = true;
    publicUtilities = await publicUtilityRepository.findAll();
    loading = false;
  }
}
