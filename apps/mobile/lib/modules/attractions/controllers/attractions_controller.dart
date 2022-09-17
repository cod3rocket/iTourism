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

  @observable
  AttractionType? selectedType;

  @observable
  bool loading = false;

  @computed
  List<Attraction> get featuredAttractions => attractions
      .where((attraction) => attraction.type == AttractionType.hotel)
      .toList();

  @computed
  List<Attraction> get attractionsByType => attractions
      .where((attraction) => attraction.type == selectedType)
      .toList();

  @action
  selectAttractionType(AttractionType type) {
    if (type == selectedType) {
      selectedType = null;
    } else {
      selectedType = type;
    }
  }

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
