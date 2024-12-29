import 'package:deal_zone/features/login/presentation/pages/login_screen.dart';
import 'package:deal_zone/features/register/presentation/pages/register_screen.dart';
import 'package:go_router/go_router.dart';

import '../features/splash/splash_screen.dart';
class AppRoutes {
  static const String splashScreen = '/splash';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';


  static final GoRouter router = GoRouter(
    initialLocation: splashScreen,
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: registerScreen,
        builder: (context, state) => RegisterScreen(),
      ),
    ],
  );
}
