import 'package:flutter/material.dart';

import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Widget socialIcon(String link, IconData iconPath) {
  return InkWell(
    onTap: () async {
      await launchUrl(Uri.parse(link));
    },
    child: SocialWidget(
      iconData: iconPath,
      placeholderText: '',
      link: link,
      iconColor: Colors.white,
    ),
  );
}
