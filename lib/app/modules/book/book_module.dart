import 'package:bible_quadrangular/app/app_module.dart';
import 'package:bible_quadrangular/app/modules/book/book_controller.dart';

import 'package:bible_quadrangular/app/shared/services/bible_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bible_quadrangular/app/modules/book/book_page.dart';

class BookModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BookController(AppModule.to.get<BibleRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => BookPage()),
      ];

  static Inject get to => Inject<BookModule>.of();
}
