import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/widget/work_card.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/constants/strings.dart';
import 'package:portfolio/common/widget/button/social_button.dart';
import 'package:portfolio/features/landing/presentation/contact/contact_item.dart';

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

  static List<ContactItem> footerItems = [
    const ContactItem(
      title: "Phone me:",
      subtile: "011-701-520",
      icon: FontAwesomeIcons.phone,
    ),
    const ContactItem(
      title: "Mail me:",
      subtile: "oengvengeang@gmail.com",
      icon: FontAwesomeIcons.envelope,
    ),
    const ContactItem(
      title: "Location :",
      subtile: "Phnom Penh, Cambodia",
      icon: FontAwesomeIcons.mapLocation,
    ),
  ];
  static List<WorkCard> cardWork = [
    const WorkCard(
                  width: 200,
                  height: 200,
                  image: AppAssets.appDevelopment,
                  text: "Mobile Development",
                ),
                const WorkCard(
                  width: 200,
                  height: 200,
                  image: AppAssets.appDevelopment,
                  text: "Mobile Development",
                ),
                const WorkCard(
                  width: 200,
                  height: 200,
                  image: AppAssets.appDevelopment,
                  text: "Mobile Development",
                ),
                const WorkCard(
                  width: 200,
                  height: 200,
                  image: AppAssets.appDevelopment,
                  text: "Mobile Development",
                )
  ];

}
