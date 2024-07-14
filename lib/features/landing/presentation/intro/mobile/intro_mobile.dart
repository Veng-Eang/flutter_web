import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/social_icon.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:rive/rive.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Stack(
          children: [
            // const Align(
            //   alignment: Alignment.topCenter,
            //   child: RiveAnimation.asset(AppAssets.introAnimation),
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 74,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(AppAssets.seltImage),
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Preah',
                      fontSize: 24,
                      height: 1,
                    ),
                    children: [
                      TextSpan(
                        text: 'Veng-Eang',
                        style: TextStyle(color: AppColors.purple),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                const SizedBox(height: 30),
                const Text(
                  'A Solopreneur,',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.4,
                      fontFamily: 'Preah',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: 'Crafting code to bring '),
                      TextSpan(text: 'ideas to '),
                      TextSpan(
                        text: 'life',
                        style: TextStyle(color: AppColors.purple),
                      ),
                      TextSpan(text: '...'),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'I\'m a software Engineer & ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Preah',
                          fontSize: 16),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Preah',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' a Tech YouTuber ',
                              style: TextStyle(
                                backgroundColor: Colors.yellowAccent,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                                text: ' who loves sharing his coding journey')
                          ]),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
