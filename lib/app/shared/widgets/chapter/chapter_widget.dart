import 'package:flutter/material.dart';

class ChapterWidget extends StatelessWidget {
  final int numberChapters;
  final Function onTap;

  const ChapterWidget({Key key, this.numberChapters, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: GridView.builder(
            itemCount: numberChapters,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                borderRadius: BorderRadius.circular(32),
                onTap: onTap,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2, 2),
                            blurRadius: 2),
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(-2, -2),
                            blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.black38)),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
