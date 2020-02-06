import 'package:bible_quadrangular/app/shared/models/book/book_model.dart';
import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  final BooksModel booksModel;
  final Function onTap;

  const BookWidget({Key key, this.booksModel, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        child: ListTile(
          onTap: onTap,
          // trailing: Text('${booksModel.chapters}/${booksModel.chapters}'),
          leading: CircleAvatar(
            child: Text(booksModel.abbrev.pt.toUpperCase()),
          ),
          title: Text(booksModel.name),
          subtitle: Text(booksModel.group),
        ),
      ),
    );
  }
}
