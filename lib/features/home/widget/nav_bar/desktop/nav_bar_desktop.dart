import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: AppColors.navBarColor,
      child: Center(
        child: Row(
          children: [
            RichText(text: TextSpan(
              children: [
                const TextSpan(text: 'Enrollments for'),
                TextSpan(text: 'Beginner to Anvanced Flutter Khmer Course')
              ]
            ))
          ],
        ),
      ),
    );
  }
}