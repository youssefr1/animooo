import 'package:animooo/features/auth/presentation/views/login_view.dart';
import 'package:animooo/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';

class AppRouter {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: login,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: signup,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpView();
        },
      ),
    ],
  );
}
