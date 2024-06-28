import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/constants/strings.dart';
import 'package:portfolio/common/widget/button/social_button.dart';

class Data {
  static List<SocialButtonData> socialDdata = [
    SocialButtonData(
      tag: StringConst.email,
      url: StringConst.emailUrl,
      iconData: FontAwesomeIcons.solidEnvelope,
    ),
    SocialButtonData(
      tag: StringConst.linkInUrl,
      url: StringConst.linkInUrl,
      iconData: FontAwesomeIcons.linkedin,
    ),
    SocialButtonData(
      tag: StringConst.githubUrl,
      url: StringConst.githubUrl,
      iconData: FontAwesomeIcons.github,
    ),
    SocialButtonData(
      tag: StringConst.instagramUrl,
      url: StringConst.instagramUrl,
      iconData: FontAwesomeIcons.instagram,
    ),
    SocialButtonData(
      tag: StringConst.youtubeUrl,
      url: StringConst.youtubeUrl,
      iconData: FontAwesomeIcons.youtube,
    ),
  ];
}
