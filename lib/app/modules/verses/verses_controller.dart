import 'package:bible_quadrangular/app/shared/models/chapter/chapter_model.dart';
import 'package:bible_quadrangular/app/shared/services/bible_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'verses_controller.g.dart';

class VersesController = _VersesBase with _$VersesController;

abstract class _VersesBase with Store {
  final BibleRepository _repository;

  _VersesBase(this._repository);

  @observable
  ObservableFuture<ChapterModel> verses;

  @observable
  Color color;

  @action
  setColor(Color value) {
    color = value;
    print(color);
  }

  @action
  takeVerses({@required String abreev, @required int chapter}) {
    verses =
        _repository.getVerses(abreev: abreev, chapter: chapter).asObservable();
  }
}
