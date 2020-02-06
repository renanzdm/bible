import 'package:bible_quadrangular/app/shared/models/chapter/chapter_model.dart';
import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  final Verse verse;
  final Color color;

  const VerseWidget({Key key, this.verse, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(verse.number.toString(),
              style: TextStyle(fontWeight: FontWeight.w300)),
          Expanded(
            child: Text(verse.text, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

// class VersesWidget extends StatelessWidget {
//   final ChapterModel chapterModel;

//   const VersesWidget({Key key, this.chapterModel}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView.builder(
//         itemCount: chapterModel.verses.length,
//         itemBuilder: (BuildContext context, int index) {
//           var verse = chapterModel.verses[index];
//           return Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(verse.number.toString(),
//                   style: TextStyle(fontWeight: FontWeight.w300)),
//               Expanded(
//                 child: Text(verse.text, style: TextStyle(fontSize: 16)),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
