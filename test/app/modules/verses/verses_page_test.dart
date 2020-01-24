import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bible_quadrangular/app/modules/verses/verses_page.dart';

main() {
  testWidgets('VersesPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(VersesPage(title: 'Verses')));
    final titleFinder = find.text('Verses');
    expect(titleFinder, findsOneWidget);
  });
}
