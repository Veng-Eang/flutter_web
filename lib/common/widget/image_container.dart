import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/app_image.dart';
import 'package:portfolio/common/widget/button/app_outline_button.dart';
import 'package:portfolio/core/theme/app_color.dart';

Widget imageContainer(
    BuildContext context,
    bool showButton,
    String topic,
    String imagePath,
    String text,
    String buttonText,
    double imageWidth,
    double imageHeight) {
  final themeData = Theme.of(context);
  double w = MediaQuery.of(context).size.width;
  return Container(
    width: w / 2.4,
    height: 260,
    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
    decoration: BoxDecoration(
      color: AppColors.purpleDark.withOpacity(0.5),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppImage(
          imageWidth: imageWidth,
          imageHeight: imageHeight,
          path: imagePath,
        ),
        const SizedBox(width: 20),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topic,
                style: themeData.textTheme.bodyLarge,
                // const TextStyle(
                //     fontSize: 26, height: 1.4, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Text(
                text,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                // style: TextStyle(fontSize: w / 80),
              ),
              const SizedBox(height: 10),
              if (showButton)
                AppOutlinedButton(
                  title: buttonText,
                  textStyle: themeData.textTheme.bodySmall,
                )
            ],
          ),
        ),
      ],
    ),
  );
}
