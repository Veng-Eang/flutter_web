import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/theme/app_color.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 100,
                    spreadRadius: 100,
                    color: AppColors.purple.withOpacity(0.4),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        ],
      ),
    );
  }
}
