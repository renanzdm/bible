import 'package:bible_quadrangular/app/modules/book/book_controller.dart';
import 'package:bible_quadrangular/app/modules/book/book_module.dart';
import 'package:bible_quadrangular/app/shared/widgets/book/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BookPage extends StatefulWidget {
  final String title;
  const BookPage({Key key, this.title = "Livros"}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  //
  BookController _bookController = BookModule.to.get();
  @override
  void initState() {
    _bookController.takeBooks();

    super.initState();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Observer(
            builder: (_) {
              var list = _bookController.listBooks;
              if (list.error != null) {
                return Center(
                  child: Text('Erro'),
                );
              }
              if (list.value == null) {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).accentColor),
                  ),
                );
              }

              return ListView.builder(
                itemCount: list.value.length,
                itemBuilder: (BuildContext context, int index) {
                  return BookWidget(
                    onTap: () async {
                      _bookController
                          .takeChapters(_bookController.listBooks.value[index]);
                      Navigator.pushNamed(context,
                          '/chaptermodule/${_bookController.listBooks.value[index].name}');
                    },
                    booksModel: _bookController.listBooks.value[index],
                  );
                },
              );
            },
          ))
        ],
      ),
    );
  }
}
