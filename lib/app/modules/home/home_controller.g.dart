// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$listBooksAtom = Atom(name: '_HomeBase.listBooks');

  @override
  ObservableFuture<List<BooksModel>> get listBooks {
    _$listBooksAtom.context.enforceReadPolicy(_$listBooksAtom);
    _$listBooksAtom.reportObserved();
    return super.listBooks;
  }

  @override
  set listBooks(ObservableFuture<List<BooksModel>> value) {
    _$listBooksAtom.context.conditionallyRunInAction(() {
      super.listBooks = value;
      _$listBooksAtom.reportChanged();
    }, _$listBooksAtom, name: '${_$listBooksAtom.name}_set');
  }

  final _$nunberChapterAtom = Atom(name: '_HomeBase.nunberChapter');

  @override
  int get nunberChapter {
    _$nunberChapterAtom.context.enforceReadPolicy(_$nunberChapterAtom);
    _$nunberChapterAtom.reportObserved();
    return super.nunberChapter;
  }

  @override
  set nunberChapter(int value) {
    _$nunberChapterAtom.context.conditionallyRunInAction(() {
      super.nunberChapter = value;
      _$nunberChapterAtom.reportChanged();
    }, _$nunberChapterAtom, name: '${_$nunberChapterAtom.name}_set');
  }

  final _$abreevAtom = Atom(name: '_HomeBase.abreev');

  @override
  String get abreev {
    _$abreevAtom.context.enforceReadPolicy(_$abreevAtom);
    _$abreevAtom.reportObserved();
    return super.abreev;
  }

  @override
  set abreev(String value) {
    _$abreevAtom.context.conditionallyRunInAction(() {
      super.abreev = value;
      _$abreevAtom.reportChanged();
    }, _$abreevAtom, name: '${_$abreevAtom.name}_set');
  }

  final _$chapterAtom = Atom(name: '_HomeBase.chapter');

  @override
  int get chapter {
    _$chapterAtom.context.enforceReadPolicy(_$chapterAtom);
    _$chapterAtom.reportObserved();
    return super.chapter;
  }

  @override
  set chapter(int value) {
    _$chapterAtom.context.conditionallyRunInAction(() {
      super.chapter = value;
      _$chapterAtom.reportChanged();
    }, _$chapterAtom, name: '${_$chapterAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  dynamic takeChapters(BooksModel book) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.takeChapters(book);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic takeAbreev(String value) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.takeAbreev(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic takeVerseSelect(int value) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.takeVerseSelect(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic takeBooks() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.takeBooks();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
