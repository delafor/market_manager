import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market_manager/app/core/constants/constants.dart';
import 'package:market_manager/app/shared/app_large_button.dart';
import 'package:market_manager/app/shared/widgets/app_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'lib/app/assets/AppIcon.jpg',
                fit: BoxFit.contain,
                height: 150,
                width: double.infinity,
              ),
              const SizedBox(height: 64),

              Text('Sign Up', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text('Enter your credentials to continue'),

              const SizedBox(height: 40),

              Text('Username'),
              AppAuthTextField(),
              const SizedBox(height: 28),

              Text('Username'),
              AppAuthTextField(),

              const SizedBox(height: 28),
              Text('Password'),

              AppAuthTextField(obscureText: true),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: "By continuing you agree to our ",
                    style: Theme.of(context).textTheme.bodyMedium,

                    children: [
                      TextSpan(
                        text: 'Terms of Service and Privacy Policy.',
                        style: const TextStyle(color: Color(0xff53B175)),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 45),

              AppLargeButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                ),
                text: 'Log in',
              ),
              SizedBox(height: 18),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),

                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff53B175),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go(Kpages.login.route);
                          },
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
