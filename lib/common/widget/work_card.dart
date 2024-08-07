import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';

class WorkCard extends StatelessWidget {
  final String image;
  final String? text;
  final BoxFit? fit;
  final double? height;
  final double? width;
  const WorkCard({
    super.key,
    required this.image,
    this.text,
    this.fit,
    this.height = 200,
    this.width = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: AppColors.purple),
      ),
      shadowColor: AppColors.purple,
      child: Padding(
        padding: EdgeInsets.all(width! / 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: width,
              height: height,
              fit: fit,
            ),
            SizedBox(height: width! / 20),
            Text(
              text ?? "",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
