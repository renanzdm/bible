import 'package:flutter/material.dart';

class VersesPage extends StatefulWidget {
  final String title;
  const VersesPage({Key key, this.title = "Verses"}) : super(key: key);

  @override
  _VersesPageState createState() => _VersesPageState();
}

class _VersesPageState extends State<VersesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[

        ],
      ),
    );
  }
}
