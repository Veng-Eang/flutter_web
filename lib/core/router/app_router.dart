import 'package:go_router/go_router.dart';
import '../../features/home/home_screen.dart';

class RouteUri {
  RouteUri._();
  static const String init = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
}

GoRouter appRouter() => GoRouter(initialLocation: '/', routes: [
      GoRoute(path: RouteUri.init, redirect: (context, state) => RouteUri.home),
      GoRoute(
        path: RouteUri.home,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: HomeScreen()),
      )
    ]);
