import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'helpers/golden_helpers.dart';

// TODO: no Flutter page exists yet for this screen.
// When a page exists (Figma node 1:416, see
// test/golden/figma_reference/verification.png):
//   1. Replace `const Placeholder()` below with the real widget.
//   2. Remove `skip: true`.
//   3. Run: fvm flutter test --update-goldens test/golden/verification_golden_test.dart
void main() {
  testGoldens(
    'Verification screen matches golden (Figma: Verification, node 1:416)',
    (tester) async {
      await pumpPageForGolden(
        tester,
        goldenName: 'verification',
        page: const Placeholder(),
      );
    },
    skip: true,
  );
}
