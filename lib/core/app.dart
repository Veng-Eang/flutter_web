import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/router/app_router.dart';
import 'package:portfolio/core/theme/app_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoRouter? _appRouter;
  @override
  Widget build(BuildContext context) {
    _appRouter = appRouter();
    return MaterialApp.router(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'Veng-Eang | Developer & Content Creator',
      routerConfig: _appRouter,
    );
  }
}
