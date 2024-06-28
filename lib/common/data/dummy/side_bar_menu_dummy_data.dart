import 'package:flutter/material.dart';
import 'package:portfolio/common/model/side_bar_menu.dart';

import '../../../core/router/route_uri.dart';

final sideBarMenuData = [
  SideBarMenu(
    uri: RouteUri.home,
    icon: Icons.home,
    title: (context) => "Home",
  ),
  SideBarMenu(
    uri: RouteUri.works,
    icon: Icons.work,
    title: (context) => "Works",
  ),
  SideBarMenu(
    uri: RouteUri.blog,
    icon: Icons.code_rounded,
    title: (context) => "Blog",
  ),
  SideBarMenu(
    uri: RouteUri.aboutMe,
    icon: Icons.contact_emergency,
    title: (context) => "About",
  ),
  SideBarMenu(
    uri: RouteUri.contact,
    icon: Icons.phone,
    title: (context) => "Contact",
  ),
];
