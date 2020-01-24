import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final String image;
  final String title;
  final Function onTap;

  const HomeWidget({Key key, this.image, this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(3, 4), blurRadius: 10)
          ],
        ),
        height: 200,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              image,
              height: 100,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  shadows: [
                    Shadow(
                        color: Colors.black38,
                        offset: Offset(1, 1),
                        blurRadius: 4)
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
