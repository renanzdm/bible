import 'package:bible_quadrangular/app/app_module.dart';
import 'package:bible_quadrangular/app/modules/verses/verses_controller.dart';
import 'package:bible_quadrangular/app/modules/verses/verses_page.dart';
import 'package:bible_quadrangular/app/shared/services/bible_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class VersesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => VersesController(AppModule.to.get<BibleRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => VersesPage()),
      ];

  static Inject get to => Inject<VersesModule>.of();
}
