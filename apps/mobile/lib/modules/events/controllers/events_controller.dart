import 'package:itourism_mobile/modules/events/models/event_model.dart';
import 'package:itourism_mobile/modules/events/repositories/event_repository.dart';
import 'package:mobx/mobx.dart';

part 'events_controller.g.dart';

class EventsController = _EventsControllerBase with _$EventsController;

abstract class _EventsControllerBase with Store {
  final EventsRepository eventsRepository;

  _EventsControllerBase(this.eventsRepository) {
    findAll();
  }

  @observable
  List<Event> events = [];

  @observable
  bool loading = false;

  @action
  Future<void> findAll() async {
    loading = true;
    events = await eventsRepository.findAll();
    loading = false;
  }
}
