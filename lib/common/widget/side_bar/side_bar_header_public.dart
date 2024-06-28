import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/constants/dimens.dart';
import 'package:portfolio/core/router/route_uri.dart';
import 'package:portfolio/core/theme/extensions/app_side_bar_theme.dart';

class SideBarHeaderPublic extends StatelessWidget {
  const SideBarHeaderPublic({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final sidebarTheme = themeData.extension<AppSideBarTheme>()!;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: ()=>GoRouter.of(context).go(RouteUri.home),
            child: Image.asset(AppAssets.logo),
            ),
        ),
        const SizedBox(height: kDefaultPadding * 0.5),
        Align(
          alignment: Alignment.centerRight,
          child: IntrinsicHeight(
              child: _textButton(
            themeData: themeData,
            sidebarTheme: sidebarTheme,
            icon: Icons.login_rounded,
            text: "Login or Register",
            onPressed: ()=>GoRouter.of(context).go(RouteUri.home),
          )),
        ),
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
