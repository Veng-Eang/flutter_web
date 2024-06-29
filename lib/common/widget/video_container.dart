import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoContainer extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String videoId;
  const VideoContainer({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.videoId,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://youtu.be/$videoId'));
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        width: 338,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              width: 338,
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.cover)),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
