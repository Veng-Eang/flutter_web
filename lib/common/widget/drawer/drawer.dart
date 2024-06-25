import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/side_bar/side_bar.dart';
import 'package:portfolio/core/constants/app_assets.dart';

class AppDrawer extends StatelessWidget {
  final bool autoSelectMenu;
  final String? selectedMenuUri;
  const AppDrawer({
    super.key,
    this.autoSelectMenu = true,
    this.selectedMenuUri,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: CircleAvatar(
              radius: w / 14,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: w / 14 - 4,
                backgroundImage: const AssetImage(AppAssets.seltImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
