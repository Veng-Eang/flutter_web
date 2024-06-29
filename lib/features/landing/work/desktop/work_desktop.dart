import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/animation/up_down_animated.dart';
import 'package:portfolio/common/widget/work_card.dart';
import 'package:portfolio/core/constants/app_assets.dart';

class WorkDesktop extends StatelessWidget {
  const WorkDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: h / 1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "What I do?",
            style: themeData.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UpDownAnimated(
                child: WorkCard(
                  image: AppAssets.appDevelopment,
                  text: "Mobile Development",
                ),
              ),
              UpDownAnimated(
                reverse: true,
                child: WorkCard(
                  image: AppAssets.appDevelopment,
                  text: "Mobile Development",
                ),
              ),
              UpDownAnimated(
                child: WorkCard(
                  image: AppAssets.appDevelopment,
                  text: "Mobile Development",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
