import 'package:flutter/material.dart';
import 'package:portfolio/common/data/dummy/data.dart';
import 'package:portfolio/common/widget/social_icon.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/features/landing/presentation/contact/contact_item_content.dart';
import 'package:social_media_flutter/widgets/icons.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Let's Talk!",
          style: themeData.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "If you are a student, entrepreneur or just want to chat with me, drop me an interesting mail at 👇",
          style: themeData.textTheme.bodyMedium,
        ),
        const SizedBox(height: 10),
        ContactItemContent(isHorizontal: false, data: Data.footerItems),
        const SizedBox(height: 10),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            socialIcon('https://www.instagram.com/akshitmadan_/',
                SocialIconsFlutter.instagram),
            socialIcon('https://github.com/akmadan', SocialIconsFlutter.github),
            socialIcon('https://www.linkedin.com/in/akshit-madan-394a82a6/',
                SocialIconsFlutter.linkedin_box),
            socialIcon(
                'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg',
                SocialIconsFlutter.youtube)
          ],
        ),
        const SizedBox(height: 20),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "© ${DateTime.now().year} All rights reserved. ",
                  style: themeData.textTheme.bodySmall,
                ),
                Text(
                  "Built with Flutter by ",
                  style: themeData.textTheme.bodySmall,
                ),
                InkWell(
                  onTap: () {},
                  child: Text("Veng-Eang",
                      style: themeData.textTheme.bodySmall!.copyWith(
                        decoration: TextDecoration.underline,
                        color: AppColors.purple,
                      )),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
