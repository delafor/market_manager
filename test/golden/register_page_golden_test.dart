import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:market_manager/app/pages/register/register_page.dart';

import 'helpers/golden_helpers.dart';

void main() {
  testGoldens('RegisterPage matches golden (Figma: Sign up, node 1:584)', (
    tester,
  ) async {
    await pumpPageForGolden(
      tester,
      goldenName: 'register_page',
      page: const RegisterPage(),
    );
  });
}
