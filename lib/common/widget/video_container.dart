import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoContainer extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String videoId;
  final double width;
  final double height;
  const VideoContainer({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.videoId,
    this.width = 338,
    this.height = 190,
  });

  @override
  State<VideoContainer> createState() => _VideoContainerState();
}

class _VideoContainerState extends State<VideoContainer> {
  var _isSelected = false;
  var _isImageSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => launchUrl(Uri.parse('https://youtu.be/${widget.videoId}')),
            child: MouseRegion(
              onEnter: (_){
                setState(() {
                  _isImageSelected = true;
                });
              },
              onExit: (_){
                setState(() {
                  _isImageSelected = false;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(widget.imageUrl),
                         fit: _isImageSelected ?BoxFit.fill : BoxFit.cover)),
              ),
            ),
          ),
          InkWell(
            onTap: () =>
                launchUrl(Uri.parse('https://youtu.be/${widget.videoId}')),
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _isSelected = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _isSelected = false;
                });
              },
              child: Text(
                widget.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: _isSelected ? Colors.blue : Colors.white,
              ),
            ),
          ),),
        ],
      ),
    );
  }
}
