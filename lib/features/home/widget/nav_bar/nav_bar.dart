import 'package:flutter/material.dart';
import 'package:portfolio/features/home/widget/nav_bar/mobile/nav_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/nav_bar_desktop.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context)=> const NavBarDesktop(),
      tablet: (context)=> const NavBarMobile(),
      mobile: (context)=> const NavBarMobile(),
    );
  }
}