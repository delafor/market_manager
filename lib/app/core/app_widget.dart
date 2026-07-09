import 'package:flutter/material.dart';
import 'package:market_manager/app/core/navigation/router_provider.dart';
import 'package:market_manager/app/core/theme/app_theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Market Manager',
      routerConfig: router,
      theme: AppTheme.lightTheme,
    );
  }
}
