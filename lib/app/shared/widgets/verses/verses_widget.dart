import 'package:bible_quadrangular/app/shared/models/verse_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class VerseWidget extends StatelessWidget {
  final VerseModel verse;

  const VerseWidget({Key key, this.verse}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(verse.number.toString(),
              style: TextStyle(fontWeight: FontWeight.w300)),
          Expanded(
            child: Observer(builder: (_) {
              return SelectableText(
                verse.text,
                style:
                    TextStyle(fontSize: verse.size, color: Color(verse.color)),
                onTap: () {
                  verse.color = 0xFF00FFFF;
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
