import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common/data/dummy/video_dummy_data.dart';
import 'package:portfolio/common/widget/video_container.dart';

class VideoMobile extends StatefulWidget {
  const VideoMobile({super.key});

  @override
  State<VideoMobile> createState() => _VideoMobileState();
}

class _VideoMobileState extends State<VideoMobile> {
  final CarouselController _carouselController = CarouselController();
  int currentPageIndex = 1;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h / 1.2,
      width: w,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Last Videos",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Container(
          width: w,
          height: 339,
          padding: const EdgeInsets.all(8),
          child: CarouselSlider.builder(
            itemCount: videoData.length,
            carouselController: _carouselController,
            disableGesture: false,
            itemBuilder: (BuildContext context, int index, int pageViewIndex) {
              return VideoContainer(
                title: videoData[index].title,
                videoId: videoData[index].videoId,
                imageUrl: videoData[index].imageUrl,
              );
            },
            options: carouselOptions(
              viewportFraction: 0.50,
              autoPlay: false,
              initialPage: currentPageIndex.toInt(),
              aspectRatio: 2 / 1.4,
              enableInfiniteScroll: true,
              enlargeCenterPage: false,
            ),
          ),
        ),
      ]),
    );
  }

  CarouselOptions carouselOptions({
    bool autoPlay = true,
    bool enlargeCenterPage = false,
    bool enableInfiniteScroll = true,
    double viewportFraction = 1.0,
    double aspectRatio = 0.1,
    int initialPage = 1,
  }) {
    return CarouselOptions(
        autoPlay: autoPlay,
        enableInfiniteScroll: enableInfiniteScroll,
        enlargeCenterPage: enlargeCenterPage,
        viewportFraction: viewportFraction,
        aspectRatio: aspectRatio,
        initialPage: initialPage,
        onPageChanged: (int index, CarouselPageChangedReason reason) {
          setState(() {
            currentPageIndex = index;
          });
        });
  }
}
