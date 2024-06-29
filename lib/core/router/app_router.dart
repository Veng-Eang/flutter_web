import 'package:go_router/go_router.dart';
import 'package:portfolio/features/about_me/about_me_screen.dart';
import 'package:portfolio/features/landing/landing.dart';
import '../../features/home/home_screen.dart';
import 'route_uri.dart';

GoRouter appRouter() => GoRouter(initialLocation: RouteUri.init, routes: [
      GoRoute(
        path: RouteUri.init,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: Landing()),
      ),
      GoRoute(
        path: RouteUri.home,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: RouteUri.aboutMe,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AboutMeScreen(),
        ),
      ),
    ]);
