import 'package:bible_quadrangular/app/modules/chapter/chapter_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bible_quadrangular/app/modules/chapter/chapter_page.dart';

class ChapterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChapterController()),
      ];

  @override
  List<Router> get routers => [
        Router('/:title',
            child: (_, args) => ChapterPage(
                  title: args.params['title'],
                )),
      ];

  static Inject get to => Inject<ChapterModule>.of();
}
