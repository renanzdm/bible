import 'package:bible_quadrangular/app/shared/models/chapter/chapter_model.dart';
import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  final ChapterModel chapterModel;

  const VersesWidget({Key key, this.chapterModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chapterModel.verses.length,
        itemBuilder: (BuildContext context, int index) {
          var list = chapterModel.verses[index];
          return Text(list.text);
        },
      ),
    );
  }
}
