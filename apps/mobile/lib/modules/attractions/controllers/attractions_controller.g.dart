// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attractions_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AttractionsController on _AttractionsControllerBase, Store {
  Computed<List<Attraction>>? _$featuredAttractionsComputed;

  @override
  List<Attraction> get featuredAttractions => (_$featuredAttractionsComputed ??=
          Computed<List<Attraction>>(() => super.featuredAttractions,
              name: '_AttractionsControllerBase.featuredAttractions'))
      .value;

  late final _$attractionsAtom =
      Atom(name: '_AttractionsControllerBase.attractions', context: context);

  @override
  List<Attraction> get attractions {
    _$attractionsAtom.reportRead();
    return super.attractions;
  }

  @override
  set attractions(List<Attraction> value) {
    _$attractionsAtom.reportWrite(value, super.attractions, () {
      super.attractions = value;
    });
  }

  late final _$attractionAtom =
      Atom(name: '_AttractionsControllerBase.attraction', context: context);

  @override
  Attraction get attraction {
    _$attractionAtom.reportRead();
    return super.attraction;
  }

  @override
  set attraction(Attraction value) {
    _$attractionAtom.reportWrite(value, super.attraction, () {
      super.attraction = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_AttractionsControllerBase.loading', context: context);

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

  late final _$fetchAttractionsAsyncAction = AsyncAction(
      '_AttractionsControllerBase.fetchAttractions',
      context: context);

  @override
  Future<void> fetchAttractions() {
    return _$fetchAttractionsAsyncAction.run(() => super.fetchAttractions());
  }

  late final _$fetchAttractionAsyncAction = AsyncAction(
      '_AttractionsControllerBase.fetchAttraction',
      context: context);

  @override
  Future<void> fetchAttraction(String id) {
    return _$fetchAttractionAsyncAction.run(() => super.fetchAttraction(id));
  }

  @override
  String toString() {
    return '''
attractions: ${attractions},
attraction: ${attraction},
loading: ${loading},
featuredAttractions: ${featuredAttractions}
    ''';
  }
}
