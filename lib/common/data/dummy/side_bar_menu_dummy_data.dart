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
    icon: Icons.home,
    title: (context) => "Works",
  ),
  SideBarMenu(
    uri: RouteUri.blog,
    icon: Icons.home,
    title: (context) => "Blog",
  ),
  SideBarMenu(
    uri: RouteUri.aboutMe,
    icon: Icons.home,
    title: (context) => "About Me",
  ),
  SideBarMenu(
    uri: RouteUri.contact,
    icon: Icons.home,
    title: (context) => "Contact Me",
  ),
];
