import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/animation/up_down_animated.dart';
import 'package:portfolio/common/widget/image_container.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/theme/app_color.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 200,
                    spreadRadius: 200,
                    color: AppColors.purple.withOpacity(0.4),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'What I do?',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: [
                    UpDownAnimated(
                      child: imageContainer(
                          context,
                          false,
                          '14,000+ YouTube Subscribers',
                          AppAssets.webDevelopment,
                          'Published over 350 Videos sharing my Development Experiences and Technical Expertise. ',
                          'VISIT CHANNEL',
                          50,
                          50),
                    ),
                    UpDownAnimated(
                      reverse: true,
                      child: imageContainer(
                          context,
                          false,
                          'Ex-Intern @Tickertape',
                          AppAssets.appDevelopment,
                          'Worked at Indian Fintech Startup Tickertape as a Mobile Development Engineer',
                          'VISIT CHANNEL',
                          50,
                          50),
                    ),
                    UpDownAnimated(
                      reverse: true,
                      child: imageContainer(
                          context,
                          false,
                          'SDE @Stealth Startup',
                          AppAssets.firebase,
                          'I am currently employed as an SDE at a HealthTech Accelerator Startup based in a beautiful city, Pune.',
                          'VISIT CHANNEL',
                          50,
                          50),
                    ),
                    UpDownAnimated(
                      child: imageContainer(
                          context,
                          false,
                          'ML Researcher',
                          AppAssets.firebase,
                          "With a passion for pushing AI's boundaries, I continually delve into the latest research and developments in the field.",
                          'VISIT CHANNEL',
                          50,
                          50),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
