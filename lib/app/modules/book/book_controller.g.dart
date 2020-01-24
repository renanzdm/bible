// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BookController on _BookBase, Store {
  final _$listBooksAtom = Atom(name: '_BookBase.listBooks');

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

  final _$nunberChapterAtom = Atom(name: '_BookBase.nunberChapter');

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

  final _$_BookBaseActionController = ActionController(name: '_BookBase');

  @override
  dynamic takeChapters(BooksModel book) {
    final _$actionInfo = _$_BookBaseActionController.startAction();
    try {
      return super.takeChapters(book);
    } finally {
      _$_BookBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic takeBooks() {
    final _$actionInfo = _$_BookBaseActionController.startAction();
    try {
      return super.takeBooks();
    } finally {
      _$_BookBaseActionController.endAction(_$actionInfo);
    }
  }
}
