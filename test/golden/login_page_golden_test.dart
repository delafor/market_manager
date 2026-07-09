import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:market_manager/app/pages/login/login_page.dart';

import 'helpers/golden_helpers.dart';

void main() {
  testGoldens('LoginPage matches golden (Figma: Sign in, node 1:297)', (
    tester,
  ) async {
    await pumpPageForGolden(
      tester,
      goldenName: 'login_page',
      page: const LoginPage(),
    );
  });
}
