import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/theme/app_color.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h / 1.3,
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
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
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  AppAssets.webDevelopment,
                  height: w / 4,
                ),
                const SizedBox(width: 40),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About me",
                        style: themeData.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Hello! I'm Veng Eang I specialize in flutter development.I strive to ensure astounding performance with stae of the art security for Android, Ios, Web, Mac, Linux and Windows",
                        style: themeData.textTheme.bodyMedium,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Wrap(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, right: 7.0),
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              "Flutter",
                              style: themeData.textTheme.bodyMedium,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, right: 7.0),
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              "Firebase",
                              style: themeData.textTheme.bodyMedium,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, right: 7.0),
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              "Web",
                              style: themeData.textTheme.bodyMedium,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7.0, right: 7.0),
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              "Spring boot",
                              style: themeData.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
