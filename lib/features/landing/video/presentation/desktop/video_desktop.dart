import 'package:flutter/material.dart';
import 'package:portfolio/common/data/dummy/video_dummy_data.dart';
import 'package:portfolio/common/widget/video_container.dart';

class VideoDesktop extends StatelessWidget {
  const VideoDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Last Videos",
            style: themeData.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          Wrap(
            direction: Axis.horizontal,
            children: List.generate(videoData.length, (i) {
              return VideoContainer(
                title: videoData[i].title,
                imageUrl: videoData[i].imageUrl,
                videoId: videoData[i].videoId,
              );
            }),
          )
        ],
      ),
    );
  }
}
