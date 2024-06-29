import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/animation/up_down_animated.dart';
import 'package:portfolio/common/widget/image_container.dart';
import 'package:portfolio/common/widget/work_card.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/theme/app_color.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

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
              decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
                BoxShadow(
                  blurRadius: 200,
                  spreadRadius: 200,
                  color: AppColors.purple.withOpacity(0.4),
                )
              ]),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'What I do?',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 40),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
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
                          150,
                          150),
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
                          150,
                          150),
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
                          150,
                          150),
                    ),
                    UpDownAnimated(
                      child: imageContainer(
                          context,
                          false,
                          'ML Researcher',
                          AppAssets.firebase,
                          "With a passion for pushing AI's boundaries, I continually delve into the latest research and developments in the field.",
                          'VISIT CHANNEL',
                          150,
                          150),
                    ),
                    const UpDownAnimated(
                      child: WorkCard(
                        image: AppAssets.webDevelopment,
                        text: "Web Development",
                        fit: BoxFit.contain,
                        width: 260,
                        height: 260,
                      ),
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
