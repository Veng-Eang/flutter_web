import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/constants/dimens.dart';
import 'package:portfolio/core/theme/extensions/app_side_bar_theme.dart';

class SideBarHeader extends StatelessWidget {
  final void Function() onLogout;
  final void Function() onAccout;
  const SideBarHeader({
    super.key,
    required this.onLogout,
    required this.onAccout,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final sidebarTheme = themeData.extension<AppSideBarTheme>()!;
    return Column(
      children: [
        Row(
          children: [
            //TODO get image from server
            CircleAvatar(
              backgroundColor: sidebarTheme.menuColor,
              backgroundImage: const AssetImage(AppAssets.seltImage),
              radius: 20.0,
            ),
            const SizedBox(width: kDefaultPadding * 0.5),
            //TODO get fullname from server
            Text(
              "Veng-Eang",
              style: themeData.textTheme.titleLarge!.copyWith(
                color: sidebarTheme.headerFontColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: kDefaultPadding * 0.5),
        Align(
          alignment: Alignment.centerRight,
          child: IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _textButton(
                  themeData: themeData,
                  sidebarTheme: sidebarTheme,
                  icon: Icons.manage_accounts_rounded,
                  text: "Account",
                  onPressed: onAccout,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: VerticalDivider(
                    width: 2.0,
                    thickness: 1.0,
                    color: sidebarTheme.foregroundColor.withOpacity(0.5),
                    indent: 4.0,
                    endIndent: 4.0,
                  ),
                ),
                _textButton(
                  themeData: themeData,
                  sidebarTheme: sidebarTheme,
                  icon: Icons.logout_rounded,
                  text: "Logout",
                  onPressed: onLogout,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _textButton({
    required ThemeData themeData,
    required AppSideBarTheme sidebarTheme,
    required IconData icon,
    required String text,
    required void Function() onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: sidebarTheme.menuColor,
          ),
          const SizedBox(width: kDefaultPadding * 0.5),
          Text(
            text,
            style: themeData.textTheme.titleLarge!.copyWith(
              fontSize: 14,
              color: sidebarTheme.menuColor,
            ),
          ),
        ],
      ),
    );
  }
}
