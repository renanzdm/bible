import 'package:bible_quadrangular/app/shared/models/book/book_model.dart';
import 'package:bible_quadrangular/app/shared/services/bible_repository.dart';
import 'package:mobx/mobx.dart';

part 'book_controller.g.dart';

class BookController = _BookBase with _$BookController;

abstract class _BookBase with Store {
  final BibleRepository _repository;

  _BookBase(this._repository);
  @observable
  ObservableFuture<List<BooksModel>> listBooks;

  @observable
  int nunberChapter;

  @action
  takeChapters(BooksModel book) {
    nunberChapter = book.chapters;
  }

  @observable
  String abreev;
  @action
  takeAbreev(String value) => abreev = value;

  @observable
  int chapter;
  @action
  takeVerseSelect(int value) {
    chapter = value;
    print(chapter);
  }

  @action
  takeBooks() {
    listBooks = _repository.getBooks().asObservable();
  }
}
