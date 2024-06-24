import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/social_icon.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:rive/rive.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomRight,
            child: RiveAnimation.asset(AppAssets.introAnimation),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100.0),
              Row(
                children: [
                  CircleAvatar(
                    radius: w / 14,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: w / 14 - 4,
                      backgroundImage: const AssetImage(AppAssets.seltImage),
                    ),
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'Preah',
                            color: Colors.white,
                            fontSize: w / 40,
                          ),
                          children: [
                            const TextSpan(text: 'I am '),
                            TextSpan(
                              text: 'Veng-Eang',
                              style: TextStyle(color: AppColors.purple),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'A Solopreneur,',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.2,
                            fontFamily: 'Preah',
                            fontSize: w / 20,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            const TextSpan(text: 'Crafting code to bring\n'),
                            const TextSpan(text: 'ideas to '),
                            TextSpan(
                              text: 'life',
                              style: TextStyle(color: AppColors.purple),
                            ),
                            const TextSpan(text: '...'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I\'m a software Engineer &',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.2,
                      fontFamily: 'Preah',
                      fontSize: w / 28,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.2,
                        fontFamily: 'Preah',
                        fontSize: w / 44,
                        fontWeight: FontWeight.bold,
                      ),
                      children: const [
                        TextSpan(
                          text: ' a Tech YouTuber ',
                          style: TextStyle(
                            backgroundColor: Colors.yellowAccent,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(text: ' who loves sharing his coding journey!'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Row(
                      children: [
                        socialIcon(
                          'https://www.instagram.com/veng_eang',
                          SocialIconsFlutter.instagram,
                        ),
                        socialIcon(
                          'https://github.com/Veng-Eang',
                          SocialIconsFlutter.github,
                        ),
                        socialIcon(
                          'https://www.linkedin.com/in/veng-eang-452462268/',
                          SocialIconsFlutter.linkedin,
                        ),
                        socialIcon(
                          'https://www.youtube.com/@thnakrean',
                          SocialIconsFlutter.youtube,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
