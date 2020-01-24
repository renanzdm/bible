import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bible_quadrangular/app/shared/widgets/verses/verses_widget.dart';

main() {
  testWidgets('VersesWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(VersesWidget()));
    final textFinder = find.text('Verses');
    expect(textFinder, findsOneWidget);
  });
}
