// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verses_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VersesController on _VersesBase, Store {
  final _$versesAtom = Atom(name: '_VersesBase.verses');

  @override
  ObservableFuture<ChapterModel> get verses {
    _$versesAtom.context.enforceReadPolicy(_$versesAtom);
    _$versesAtom.reportObserved();
    return super.verses;
  }

  @override
  set verses(ObservableFuture<ChapterModel> value) {
    _$versesAtom.context.conditionallyRunInAction(() {
      super.verses = value;
      _$versesAtom.reportChanged();
    }, _$versesAtom, name: '${_$versesAtom.name}_set');
  }

  final _$_VersesBaseActionController = ActionController(name: '_VersesBase');

  @override
  dynamic takeVerses({@required String abreev, @required int verse}) {
    final _$actionInfo = _$_VersesBaseActionController.startAction();
    try {
      return super.takeVerses(abreev: abreev, verse: verse);
    } finally {
      _$_VersesBaseActionController.endAction(_$actionInfo);
    }
  }
}
