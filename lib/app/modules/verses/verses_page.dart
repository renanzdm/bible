import 'package:bible_quadrangular/app/modules/home/home_controller.dart';
import 'package:bible_quadrangular/app/modules/home/home_module.dart';
import 'package:bible_quadrangular/app/modules/verses/verses_controller.dart';
import 'package:bible_quadrangular/app/modules/verses/verses_module.dart';
import 'package:bible_quadrangular/app/shared/widgets/verses/verses_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class VersesPage extends StatefulWidget {
  final String title;
  final String chapter;
  const VersesPage({Key key, this.title = "Verses", this.chapter})
      : super(key: key);

  @override
  _VersesPageState createState() => _VersesPageState();
}

class _VersesPageState extends State<VersesPage> {
  VersesController _versesController = VersesModule.to.get();
  HomeController _homeController = HomeModule.to.get();
  @override
  void initState() {
    print(widget.chapter.runtimeType);
    _versesController.takeVerses(
        abreev: _homeController.abreev, chapter: _homeController.chapter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title} ${widget.chapter}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                child: ListView.builder(
                  itemCount: _versesController.verses.value.verses.length,
                  itemBuilder: (BuildContext context, int index) {
                    var verse = _versesController.verses.value.verses[index];
                    return VerseWidget(
                      verse: verse,
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
