import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return Scrollbar(
      controller: _scrollController,
      child: ListView(
        controller: _scrollController,
        //TODO : add padding fromLTRB
        children: [
          //TODO : add side bar header
          const Text("Side Bar Header"),
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
    );
  }

  Widget _sideBarMenuList(BuildContext context) {
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
    required String uri,
    required IconData icon,
    required String title,
    required bool isSelected,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              const SizedBox(width: 5),
              Text(title),
            ],
          ),
          onTap: () => GoRouter.of(context).go(uri),
          selected: isSelected,
        ),
      ),
    );
  }
}
