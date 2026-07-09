import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:market_manager/app/core/app_widget.dart';

void main() {
  testWidgets('App boots to WelcomePage and shows the search field', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProviderScope(child: AppWidget()));
    await tester.pumpAndSettle();

    expect(find.text('procurar no market manager'), findsOneWidget);
  });
}
