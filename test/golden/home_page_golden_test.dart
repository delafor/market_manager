import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:market_manager/app/pages/home/home_page.dart';

import 'helpers/golden_helpers.dart';

void main() {
  testGoldens('HomePage matches golden (Figma: Home Screen, node 1:45)', (
    tester,
  ) async {
    await pumpPageForGolden(
      tester,
      goldenName: 'home_page',
      page: const HomePage(),
    );
  });
}
