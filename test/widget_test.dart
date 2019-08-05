// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:religion/main.dart';

void main() {
  testWidgets('Judism', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(FontAwesomeIcons.starOfDavid));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Torah'), findsOneWidget);
    expect(find.text('Ketuvim'), findsOneWidget);
  });
}
