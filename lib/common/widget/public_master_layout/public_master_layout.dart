import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/nav_bar/nav_bar.dart';
import 'package:portfolio/common/widget/side_bar/side_bar.dart';

class PublicMasterLayout extends StatelessWidget {
  const PublicMasterLayout({
    super.key,
    required this.body,
    this.autoSelectMenu = true,
  });
  final Widget body;
  final bool autoSelectMenu;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final drawer = (mediaQueryData.size.width < 950 ? _sideBar(context) : null);
    return Scaffold(
      appBar: AppBar(
        title: const NavBar(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.translate)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode)),
        ],
      ),
      drawer: drawer,
      body: body,
    );
  }

  Widget _sideBar(BuildContext context) {
    return SideBar(
      autoSelectMenu: autoSelectMenu,
      onAccountButtonPressed: () {},
      onLogoutButtonPressed: () {},
    );
  }
}
