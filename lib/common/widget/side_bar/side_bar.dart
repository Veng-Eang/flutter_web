import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/common/widget/side_bar/side_bar_header.dart';
import 'package:portfolio/core/constants/dimens.dart';
import 'package:portfolio/core/theme/app_text.dart';
import 'package:portfolio/core/theme/extensions/app_side_bar_theme.dart';

import '../../data/dummy/side_bar_menu_dummy_data.dart';

class SideBar extends StatefulWidget {
  final bool autoSelectMenu;
  final String? selectedMenuUri;
  final void Function() onAccountButtonPressed;
  final void Function() onLogoutButtonPressed;

  const SideBar({
    super.key,
    required this.autoSelectMenu,
    this.selectedMenuUri,
    required this.onAccountButtonPressed,
    required this.onLogoutButtonPressed,
  });

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final sidebarTheme = themeData.extension<AppSideBarTheme>()!;
    return Drawer(
      child: Theme(
        data: themeData.copyWith(
          scrollbarTheme: themeData.scrollbarTheme.copyWith(
            thumbColor: WidgetStatePropertyAll(
                sidebarTheme.foregroundColor.withOpacity(0.2)),
          ),
        ),
        child: Scrollbar(
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            padding: EdgeInsets.fromLTRB(
              sidebarTheme.sidebarLeftPadding,
              sidebarTheme.sidebarTopPadding,
              sidebarTheme.sidebarRightPadding,
              sidebarTheme.sidebarBottomPadding,
            ),
            children: [
              SideBarHeader(
                  onAccout: widget.onAccountButtonPressed,
                  onLogout: widget.onLogoutButtonPressed),
              // const SideBarHeaderPublic(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  height: 2.0,
                  thickness: 1.0,
                ),
              ),
              _sideBarMenuList(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sideBarMenuList(BuildContext context) {
    final sidebarTheme = Theme.of(context).extension<AppSideBarTheme>()!;
    var currentLocation = widget.selectedMenuUri ?? '';

    if (currentLocation.isEmpty && widget.autoSelectMenu) {
      currentLocation = GoRouter.of(context)
          .routerDelegate
          .currentConfiguration
          .uri
          .toString();
    }
    return Column(
        children: sideBarMenuData.map<Widget>((menu) {
      if (menu.children.isEmpty) {
        return _sideBarMenu(
          context: context,
          padding: EdgeInsets.fromLTRB(
            sidebarTheme.sidebarLeftPadding,
            sidebarTheme.sidebarTopPadding,
            sidebarTheme.sidebarRightPadding,
            sidebarTheme.sidebarBottomPadding,
          ),
          uri: menu.uri,
          icon: menu.icon,
          title: menu.title(context),
          isSelected: (currentLocation.startsWith(menu.uri)),
        );
      } else {
        return Container();
      }
    }).toList());
  }

  Widget _sideBarMenu({
    required BuildContext context,
    required EdgeInsets padding,
    required String uri,
    required IconData icon,
    required String title,
    required bool isSelected,
  }) {
    final themeData = Theme.of(context);
    final sidebarTheme = themeData.extension<AppSideBarTheme>()!;
    final textColor = (isSelected
        ? sidebarTheme.menuSelectedFontColor
        : sidebarTheme.menuColor);
    return Padding(
      padding: padding,
      child: Card(
        color: sidebarTheme.menuCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(sidebarTheme.menuBorderRadius),
        ),
        elevation: 8.0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          title: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: (sidebarTheme.menuFontSize + 4.0),
                  color: textColor,
                ),
                const SizedBox(width: kDefaultPadding * 0.5),
                Text(
                  title,
                  style: h8.copyWith(
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
          onTap: () => GoRouter.of(context).go(uri),
          selected: isSelected,
        ),
      ),
    );
  }
}
