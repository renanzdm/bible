import 'package:bible_quadrangular/app/shared/models/book/book_model.dart';
import 'package:bible_quadrangular/app/shared/models/chapter/chapter_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BibleRepository extends Disposable {
  final Dio client;

  BibleRepository(this.client);

  Future<List<BooksModel>> getBooks() async {
    final response = await client.get('/books');
    List<BooksModel> listBooks = (response.data as List)
        .map((item) => BooksModel.fromJson(item))
        .toList();
    return listBooks;
  }

  Future<ChapterModel> getVerses(
      {@required String abreev, @required int verse}) async {
    final response = await client.get('/verses/nvi/$abreev/$verse');
    var resultVerses = (response.data);
    return ChapterModel.fromJson(resultVerses);
  }

  //dispose will be called automatically
  @override
  void dispose() {
    client.close();
  }
}
