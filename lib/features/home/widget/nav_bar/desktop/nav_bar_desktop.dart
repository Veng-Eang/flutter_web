import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/tab_desktop.dart';
import 'package:portfolio/core/theme/app_color.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(flex: 3),
        TabDesktop(title: "Home", route: "/"),
        Spacer(),
        TabDesktop(title: "Works", route: "/works"),
        Spacer(),
        TabDesktop(title: "Blog", route: "/blog"),
        Spacer(),
        TabDesktop(title: "About", route: "/about"),
        Spacer(),
        TabDesktop(title: "Contact", route: "/contact"),
        Spacer(),
      ],
    );
  }
}
