import 'package:bible_quadrangular/app/modules/home/home_controller.dart';
import 'package:bible_quadrangular/app/modules/home/home_module.dart';

import 'package:bible_quadrangular/app/shared/widgets/chapter/chapter_widget.dart';
import 'package:flutter/material.dart';

class ChapterPage extends StatefulWidget {
  final String title;
  const ChapterPage({Key key, this.title}) : super(key: key);

  @override
  _ChapterPageState createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  HomeController _homeController = HomeModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ChapterWidget(
              numberChapters: _homeController.nunberChapter,
            ),
          )
        ],
      ),
    );
  }
}
