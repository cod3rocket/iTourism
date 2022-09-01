// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EventsController on _EventsControllerBase, Store {
  late final _$eventsAtom =
      Atom(name: '_EventsControllerBase.events', context: context);

  @override
  List<Event> get events {
    _$eventsAtom.reportRead();
    return super.events;
  }

  @override
  set events(List<Event> value) {
    _$eventsAtom.reportWrite(value, super.events, () {
      super.events = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_EventsControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$findAllAsyncAction =
      AsyncAction('_EventsControllerBase.findAll', context: context);

  @override
  Future<void> findAll() {
    return _$findAllAsyncAction.run(() => super.findAll());
  }

  @override
  String toString() {
    return '''
events: ${events},
loading: ${loading}
    ''';
  }
}
