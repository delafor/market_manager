import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:market_manager/app/pages/welcome/welcome_page.dart';

import 'helpers/golden_helpers.dart';

void main() {
  testGoldens('WelcomePage matches golden (Figma: Onboarding, node 1:282)', (
    tester,
  ) async {
    await pumpPageForGolden(
      tester,
      goldenName: 'welcome_page',
      page: const WelcomePage(),
    );
  });
}
