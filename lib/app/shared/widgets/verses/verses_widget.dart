import 'package:bible_quadrangular/app/shared/models/chapter/chapter_model.dart';
import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  final Verse verse;
  final Function onLongPress;
  final Color color;

  const VerseWidget({Key key, this.verse, this.onLongPress, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
          child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(verse.number.toString(),
                style: TextStyle(fontWeight: FontWeight.w300)),
            Expanded(
              child: Text(
                verse.text,
                style: TextStyle(fontSize: 16, color:color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

