import 'package:itourism_mobile/modules/attractions/repositories/attractions_repository.dart';
import 'package:mobx/mobx.dart';

import '../models/attraction_model.dart';

part 'attractions_controller.g.dart';

class AttractionsController = _AttractionsControllerBase
    with _$AttractionsController;

abstract class _AttractionsControllerBase with Store {
  final AttractionsRepository attractionsRepository;

  _AttractionsControllerBase(this.attractionsRepository) {
    fetchAttractions();
  }

  @observable
  List<Attraction> attractions = [];

  @observable
  late Attraction attraction;

  @computed
  List<Attraction> get featuredAttractions => attractions
      .where((attraction) => attraction.type == AttractionType.hotel)
      .toList();

  @observable
  bool loading = false;

  @action
  Future<void> fetchAttractions() async {
    loading = true;

    attractions = await attractionsRepository.fetchAttractions();

    loading = false;
  }

  @action
  Future<void> fetchAttraction(String id) async {
    loading = true;

    attraction = await attractionsRepository.fetchAttraction(id);

    loading = false;
  }
}
