import 'package:flutter/material.dart';

class SideBarMenu {
  final String uri;
  final IconData icon;
  final String Function(BuildContext context) title;
  final List<SideBarChildMenu> children;

  SideBarMenu({
    required this.uri,
    required this.icon,
    required this.title,
    List<SideBarChildMenu>? children,
  }): children = children ?? const [];
}

class SideBarChildMenu {
  final String uri;
  final IconData icon;
  final String Function(BuildContext context) title;

  SideBarChildMenu({
    required this.uri,
    required this.icon,
    required this.title,
  });
}
