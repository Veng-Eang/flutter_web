import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common/data/dummy/data.dart';
import 'package:portfolio/common/widget/animation/up_down_animated.dart';
import 'package:portfolio/common/widget/work_card.dart';
import 'package:portfolio/core/constants/app_assets.dart';

class WorkMobile extends StatefulWidget {
  const WorkMobile({super.key});

  @override
  State<WorkMobile> createState() => _WorkMobileState();
}

class _WorkMobileState extends State<WorkMobile> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          Text(
            "What I do?",
            style: themeData.textTheme.titleLarge,
          ),
          const Wrap(
            children: [
              UpDownAnimated(
                child: WorkCard(
                  width: 200,
                  height: 200,
                  image: AppAssets.webDevelopment,
                  text: "Web Development",
                ),
              ),
              UpDownAnimated(
                reverse: true,
                child: WorkCard(
                  width: 200,
                  height: 200,
                  image: AppAssets.appDevelopment,
                  text: "Mobile Development",
                ),
              ),
              UpDownAnimated(
                child: WorkCard(
                  width: 200,
                  height: 200,
                  image: AppAssets.firebase,
                  text: "Backend Development",
                ),
              ),
              UpDownAnimated(
                reverse: true,
                child: WorkCard(
                  width: 200,
                  height: 200,
                  image: AppAssets.springBoot,
                  text: "Backend Development",
                ),
              ),
            ],
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
