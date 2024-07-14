import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/nav_bar/nav_bar.dart';
import 'package:portfolio/common/widget/public_master_layout/public_master_layout.dart';
import 'package:portfolio/features/landing/presentation/contact/contact.dart';
import 'package:portfolio/features/landing/presentation/intro/intro.dart';
import 'package:portfolio/features/landing/presentation/video/video_widget.dart';
import 'package:portfolio/features/landing/presentation/work/work.dart';

import 'about/about.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return const PublicMasterLayout(
        body: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Intro(),
                  About(),
                  Work(),
                  VideoWiget(),
                  Contact(),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
