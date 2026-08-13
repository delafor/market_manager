import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:market_manager/app/core/theme/app_theme.dart';
import 'package:market_manager/app/shared/app_large_button.dart';
import 'package:market_manager/app/shared/widgets/app_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 64),

              Text('Login', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(
                'Enter your email and password',
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 40),

              Text('Email'),
              AppAuthTextField(),

              const SizedBox(height: 24),
              Text('Password'),

              AppAuthTextField(obscureText: true),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: const Text('Forgot password?'),
                ),
              ),
              const SizedBox(height: 50),

              AppLargeButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                ),
                text: 'Log in',
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Dont' have an account? ",
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
