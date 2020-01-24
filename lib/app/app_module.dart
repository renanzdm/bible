import 'package:bible_quadrangular/app/app_controller.dart';
import 'package:bible_quadrangular/app/app_widget.dart';
import 'package:bible_quadrangular/app/modules/book/book_module.dart';
import 'package:bible_quadrangular/app/modules/chapter/chapter_module.dart';
import 'package:bible_quadrangular/app/modules/home/home_module.dart';
import 'package:bible_quadrangular/app/modules/verses/verses_module.dart';
import 'package:bible_quadrangular/app/shared/services/bible_repository.dart';
import 'package:bible_quadrangular/app/shared/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BibleRepository(i.get<Dio>())),
        Bind((i) => AppController()),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL))),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router('/chaptermodule',
            module: ChapterModule(),
            transition: TransitionType.rightToLeftWithFade),
        Router('/bookmodule',
            module: BookModule(),
            transition: TransitionType.rightToLeftWithFade),
        Router('/versemodule',
            module: VersesModule(),
            transition: TransitionType.rightToLeftWithFade)
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
