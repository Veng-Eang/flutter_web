import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/intro/desktop/intro_desktop.dart';
import 'package:portfolio/features/landing/intro/mobile/intro_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context)=> const IntroDesktop(),
      tablet: (context) => const IntroMobile(),
      mobile: (context)=> const IntroMobile(),
    );
  }
}