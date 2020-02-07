import 'package:bible_quadrangular/app/modules/verses/verses_controller.dart';
import 'package:bible_quadrangular/app/modules/verses/verses_module.dart';
import 'package:bible_quadrangular/app/shared/models/chapter/chapter_model.dart';
import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  final Verse verse;
  final Function onLongPress;

  const VerseWidget({Key key, this.verse, this.onLongPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    VersesController controller = VersesModule.to.get();
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(verse.number.toString(),
              style: TextStyle(fontWeight: FontWeight.w300)),
          Expanded(
            
               child:Text(
                verse.text,
                style: TextStyle(fontSize: 16,color: controller.color),
              ),
            
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
