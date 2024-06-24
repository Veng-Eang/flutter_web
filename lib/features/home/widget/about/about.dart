import 'package:flutter/material.dart';
import 'package:portfolio/features/home/widget/about/desktop/about_desktop.dart';
import 'package:portfolio/features/home/widget/about/mobile/about_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const AboutDesktop(),
      tablet: (context) => const AboutMobile(),
      mobile: (context) => const AboutMobile(),
    );
  }
}
