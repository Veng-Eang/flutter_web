import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:portfolio/common/data/dummy/video_dummy_data.dart';
import 'package:portfolio/common/widget/form/text_form_field.dart';
import 'package:portfolio/common/widget/video_container.dart';

class VideoDesktop extends StatefulWidget {
  const VideoDesktop({super.key});

  @override
  State<VideoDesktop> createState() => _VideoDesktopState();
}

class _VideoDesktopState extends State<VideoDesktop> {
  final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Product $index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          Container(
            height: 56,
            width: w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(flex: 8),
                Container(
                  width: w * 0.4,
                  child: FormBuilder(
                    child: AppTextFormField(
                      name: "search",
                      hintText: "What's on your mind",
                      onSaved: (value) {},
                      validator: FormBuilderValidators.maxWordsCount(256),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.search),
                ),
                Spacer(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h - 56 - 28 - 56,
                padding: const EdgeInsets.all(20),
                width: w * 0.2,
                color: Colors.deepPurple,
                child: Column(children: [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                ]),
              ),
              Container(
                width: w * 0.8,
                height: h - 56 - 28 - 56,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 380,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15),
                    itemCount: videoData.length,
                    itemBuilder: (context, index) {
                      return VideoContainer(
                        title: videoData[index].title,
                        imageUrl: videoData[index].imageUrl,
                        videoId: videoData[index].videoId,
                      );
                    }),
              ),
            ],
          ),
          Container(
            height: 18,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
