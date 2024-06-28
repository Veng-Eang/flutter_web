import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/common/data/dummy/side_bar_menu_dummy_data.dart';
import 'package:portfolio/common/widget/nav_bar/desktop/tab_desktop.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/extensions/app_side_bar_theme.dart';

class NavBarDesktop extends StatefulWidget {
  final bool autoSelectMenu;
  final String? selectedMenuUri;
  const NavBarDesktop({
    super.key,
    this.autoSelectMenu = true,
    this.selectedMenuUri,
  });

  @override
  State<NavBarDesktop> createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return _navbarMenuList(context);
  }

  Widget _navbarMenuList(BuildContext context) {
    var currentLocation = widget.selectedMenuUri ?? '';

    if (currentLocation.isEmpty && widget.autoSelectMenu) {
      currentLocation = GoRouter.of(context)
          .routerDelegate
          .currentConfiguration
          .uri
          .toString();
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: sideBarMenuData.map<Widget>((menu) {
          if (menu.children.isEmpty) {
            return _navBarMenu(
              uri: menu.uri,
              title: menu.title(context),
              isSelected: (currentLocation.startsWith(menu.uri)),
            );
          } else {
            //TODO : add nav bar menu have children
            return Container();
          }
        }).toList());
  }

  Widget _navBarMenu({
    required String uri,
    required String title,
    required bool isSelected,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 80),
      child: TabDesktop(title: title, route: uri, isSelectd: isSelected),
    );
  }
}
