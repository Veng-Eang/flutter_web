import 'package:go_router/go_router.dart';
import 'package:portfolio/features/about_me/about_me_screen.dart';
import '../../features/home/home_screen.dart';
import 'route_uri.dart';



GoRouter appRouter() => GoRouter(
  initialLocation: '/',
  routes: [
      GoRoute(path: RouteUri.init, redirect: (context, state) => RouteUri.home),
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
