import 'package:go_router/go_router.dart';
import 'package:portfolio/features/about_me/about_me_screen.dart';
import 'package:portfolio/features/landing/presentation/landing.dart';
import 'package:portfolio/features/video/video_screen.dart';
import 'route_uri.dart';

GoRouter appRouter() => GoRouter(initialLocation: RouteUri.init, routes: [
      GoRoute(
        path: RouteUri.init,
        redirect: (context, state) => RouteUri.home,
      ),
      GoRoute(
        path: RouteUri.home,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: Landing(),
        ),
      ),
      GoRoute(
        path: RouteUri.videos,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: VideoScreen(),
        ),
      ),
      GoRoute(
        path: RouteUri.aboutMe,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AboutMeScreen(),
        ),
      ),
    ]);
