import 'package:go_router/go_router.dart';
import 'package:market_manager/app/core/constants/constants.dart';
import 'package:market_manager/app/pages/home/home_page.dart';
import 'package:market_manager/app/pages/login/login_page.dart';
import 'package:market_manager/app/pages/register/register_page.dart';
import 'package:market_manager/app/pages/welcome/welcome_page.dart';

final router = GoRouter(
  initialLocation: Kpages.home.route,
  routes: [
    GoRoute(
      path: Kpages.welcome.route,
      builder: (context, state) => WelcomePage(),
    ),
    GoRoute(path: Kpages.home.route, builder: (context, state) => HomePage()),
    GoRoute(path: Kpages.login.route, builder: (context, state) => LoginPage()),
    GoRoute(
      path: Kpages.register.route,
      builder: (context, state) => RegisterPage(),
    ),
  ],
);
