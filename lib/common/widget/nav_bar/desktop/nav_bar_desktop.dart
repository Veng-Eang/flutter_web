import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/nav_bar/desktop/tab_desktop.dart';
import 'package:portfolio/core/theme/app_color.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(flex: 4),
        TabDesktop(title: "Home", route: "/"),
        Spacer(),
        TabDesktop(title: "Works", route: "/works"),
        Spacer(),
        TabDesktop(title: "Blog", route: "/blog"),
        Spacer(),
        TabDesktop(title: "About", route: "/about-me"),
        Spacer(),
        TabDesktop(title: "Contact", route: "/contact"),
        Spacer(),
      ],
    );
  }
}
