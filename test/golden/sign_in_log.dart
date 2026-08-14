import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:market_manager/app/pages/login/login_page.dart';

import 'helpers/golden_helpers.dart';

void main() {
  testGoldens('LoginPage matches golden', (tester) async {
    await pumpPageForGolden(
      tester,
      goldenName: 'sign_in_log_page',
      page: const LoginPage (),
    );
  });
}