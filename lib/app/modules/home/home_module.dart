import 'package:bible_quadrangular/app/app_module.dart';
import 'package:bible_quadrangular/app/modules/home/home_controller.dart';
import 'package:bible_quadrangular/app/modules/home/home_page.dart';
import 'package:bible_quadrangular/app/modules/home/home_page.dart';

import 'package:bible_quadrangular/app/shared/services/bible_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(AppModule.to.get<BibleRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
