import 'package:flutter/material.dart';
import 'package:market_manager/app/core/theme/app_theme.dart';

class AppLargeButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  const AppLargeButton({
    super.key,
    required this.text,
    this.onPressed,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonsLarge.copyWith(minimumSize: style?.minimumSize),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
