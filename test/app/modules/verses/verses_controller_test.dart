import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:bible_quadrangular/app/modules/verses/verses_controller.dart';
import 'package:bible_quadrangular/app/modules/verses/verses_module.dart';

void main() {
  initModule(VersesModule());
  VersesController verses;

  setUp(() {
    verses = VersesModule.to.get<VersesController>();
  });

  group('VersesController Test', () {
    test("First Test", () {
      expect(verses, isInstanceOf<VersesController>());
    });

    test("Set Value", () {
      expect(verses.value, equals(0));
      verses.increment();
      expect(verses.value, equals(1));
    });
  });
}
