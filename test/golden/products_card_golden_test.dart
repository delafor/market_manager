import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:market_manager/app/pages/home/components/app_cardproducts.dart';

void main() {
  testWidgets('Product Page Golden', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AppProductsPage(),
      ),
    );

    await expectLater(
      find.byType(AppProductsPage),
      matchesGoldenFile('goldens/product_card.png'),
    );
  });
}