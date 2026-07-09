import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'helpers/golden_helpers.dart';

// TODO: no Flutter page exists yet for this screen.
// When lib/app/pages/splash/splash_page.dart (Figma node 1:8, see
// test/golden/figma_reference/splash.png) exists:
//   1. Replace `const Placeholder()` below with the real widget.
//   2. Remove `skip: true`.
//   3. Run: fvm flutter test --update-goldens test/golden/splash_screen_golden_test.dart
void main() {
  testGoldens(
    'SplashScreen matches golden (Figma: Splash, node 1:8)',
    (tester) async {
      await pumpPageForGolden(
        tester,
        goldenName: 'splash_screen',
        page: const Placeholder(),
      );
    },
    skip: true,
  );
}
