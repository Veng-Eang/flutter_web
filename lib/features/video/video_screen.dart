import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/public_master_layout/public_master_layout.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widget/video_desktop.dart';
import 'widget/video_mobile.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PublicMasterLayout(
      body: ScreenTypeLayout.builder(
        desktop: (p0) => const VideoDesktop(),
        tablet: (p0) => const VideoMobile(),
        mobile: (p0) => const VideoMobile(),
      )
    );
  }
}
