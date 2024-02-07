import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/authentication/providers/auth_controller_provider.dart';
import '../../features/authentication/providers/states/auth_states.dart';
import '../../features/authentication/screens/login_screen.dart';
import '../../features/authentication/screens/register_screen.dart';
import '../../features/exercises/screens/exercise_templates_screen.dart';
import '../../features/macro_tracking/screens/macros_screen.dart';
import '../../features/plan_management/screens/plans_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../navigation_menu.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);
  return GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: router,
    ///TODO: test redirect logic
    redirect: (BuildContext context, GoRouterState state) {
      return router._redirectLogic(state);
    },
    routes: router._routes,
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref){
    _ref.listen<AuthState>(
        AuthControllerProvider,
        (_, state) => notifyListeners(),
    );
  }

  String? _redirectLogic(GoRouterState state) {
    final loginState = _ref.read(AuthControllerProvider);

    final isLoggedIn = state.matchedLocation == '/login';

    if (loginState is AuthStateInitial) {
      return isLoggedIn ? null : '/login';
    }
    if (isLoggedIn) {
      return '/';
    }

    return null;
  }

  List<GoRoute> get _routes => [
    GoRoute(
      name: 'login',
      builder: (context, state) => const LoginScreen(),
      path: '/login',
    ),
    GoRoute(
      name: 'register',
      builder: (context, state) => const RegisterScreen(),
      path: '/register',
    ),
    GoRoute(
      name: 'navigation-menu',
      builder: (context, state) => const NavigationMenu(),
      path: '/',
    ),
    GoRoute(
      name: 'exercises',
      builder: (context, state) => const ExerciseTemplatesScreen(),
      path: '/exercises',
    ),
    GoRoute(
      name: 'plans',
      builder: (context, state) => const PlansScreen(),
      path: '/plans',
    ),
    GoRoute(
      name: 'Macros',
      builder: (context, state) => const MacrosScreen(),
      path: '/macros',
    ),
    GoRoute(
      name: 'profile',
      builder: (context, state) => const ProfileScreen(),
      path: '/profile',
    ),
  ];
}