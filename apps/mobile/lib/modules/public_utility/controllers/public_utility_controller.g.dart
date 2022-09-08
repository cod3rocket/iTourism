// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_utility_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PublicUtilityController on _PublicUtilityControllerBase, Store {
  late final _$publicUtilitiesAtom = Atom(
      name: '_PublicUtilityControllerBase.publicUtilities', context: context);

  @override
  List<PublicUtility> get publicUtilities {
    _$publicUtilitiesAtom.reportRead();
    return super.publicUtilities;
  }

  @override
  set publicUtilities(List<PublicUtility> value) {
    _$publicUtilitiesAtom.reportWrite(value, super.publicUtilities, () {
      super.publicUtilities = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_PublicUtilityControllerBase.loading', context: context);

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
      AsyncAction('_PublicUtilityControllerBase.findAll', context: context);

  @override
  Future<void> findAll() {
    return _$findAllAsyncAction.run(() => super.findAll());
  }

  @override
  String toString() {
    return '''
publicUtilities: ${publicUtilities},
loading: ${loading}
    ''';
  }
}
