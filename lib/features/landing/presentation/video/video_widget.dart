import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/presentation/video/desktop/video_desktop.dart';
import 'package:portfolio/features/landing/presentation/video/mobile/video_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VideoWiget extends StatelessWidget {
  const VideoWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const VideoDesktop(),
      tablet: (p0) => const VideoMobile(),
      mobile: (p0) => const VideoMobile(),
    );
  }
}