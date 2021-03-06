import 'package:bible_quadrangular/app/modules/home/home_controller.dart';
import 'package:bible_quadrangular/app/modules/home/home_module.dart';
import 'package:bible_quadrangular/app/shared/widgets/book/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Livros"}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<HomePage> {
  //
  HomeController _bookController = HomeModule.to.get();

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

                      _bookController.takeAbreev(
                          _bookController.listBooks.value[index].abbrev.pt);

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
