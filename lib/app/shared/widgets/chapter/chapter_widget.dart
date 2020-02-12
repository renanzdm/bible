import 'package:bible_quadrangular/app/modules/home/home_controller.dart';
import 'package:bible_quadrangular/app/modules/home/home_module.dart';
import 'package:flutter/material.dart';

class ChapterWidget extends StatelessWidget {
  final int numberChapters;

  const ChapterWidget({Key key, this.numberChapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController _homeController = HomeModule.to.get();
    return Column(
      children: <Widget>[
        Expanded(
          child: GridView.builder(
            itemCount: numberChapters,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  _homeController.takeVerseSelect(index + 1);
                  Navigator.pushNamed(context,
                      '/versemodule/${_homeController.abreev.toUpperCase()}/${_homeController.chapter}');
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(4, 6),
                          blurRadius: 5),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-2, -2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
