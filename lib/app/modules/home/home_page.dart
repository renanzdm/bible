import 'package:bible_quadrangular/app/shared/widgets/home/home_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              HomeWidget(
                title: 'Ler',
                image: 'assets/teste.png',
                onTap: () {
                  Navigator.pushNamed(context, '/bookmodule');
                },
              ),
              HomeWidget(
                title: 'Ler',
                image: 'assets/teste.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              HomeWidget(
                title: 'Ler',
                image: 'assets/teste.png',
              ),
              HomeWidget(
                title: 'Ler',
                image: 'assets/teste.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
