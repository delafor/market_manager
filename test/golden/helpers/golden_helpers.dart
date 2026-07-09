import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:market_manager/app/core/theme/app_theme.dart';

/// Viewport matching the Figma frames for this project (414x896pt).
const Size figmaViewport = Size(414, 896);

/// Pumps [page] wrapped the same way the real app wraps every route
/// (MaterialApp + app theme + ProviderScope) at a fixed viewport, then
/// asserts it matches `goldens/<goldenName>.png`.
Future<void> pumpPageForGolden(
  WidgetTester tester, {
  required String goldenName,
  required Widget page,
  Size surfaceSize = figmaViewport,
}) async {
  await tester.pumpWidgetBuilder(
    page,
    wrapper: (child) => ProviderScope(
      child: MaterialApp(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        home: child,
      ),
    ),
    surfaceSize: surfaceSize,
  );
  await screenMatchesGolden(tester, goldenName);
}
