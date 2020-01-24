import 'package:bible_quadrangular/app/modules/verses/verses_controller.dart';
import 'package:bible_quadrangular/app/modules/verses/verses_module.dart';
import 'package:bible_quadrangular/app/shared/widgets/verses/verses_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class VersesPage extends StatefulWidget {
  final String title;
  const VersesPage({Key key, this.title = "Verses"}) : super(key: key);

  @override
  _VersesPageState createState() => _VersesPageState();
}

class _VersesPageState extends State<VersesPage> {
  VersesController _versesController = VersesModule.to.get();
  @override
  void initState() {
    // TODO: implement initState
    _versesController.getVerses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(
            builder: (_) {
              if (_versesController.verses.value == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (_versesController.verses.error != null) {
                return Center(
                  child: Text('Erro'),
                );
              }
              return Expanded(
                child: VersesWidget(
                  chapterModel: _versesController.verses.result,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
