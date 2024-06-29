import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/work/desktop/work_desktop.dart';
import 'package:portfolio/features/landing/work/mobile/work_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const WorkDesktop(),
      tablet: (p0) => const WorkMobile(),
      mobile: (p0) => const WorkMobile(),
    );
  }
}