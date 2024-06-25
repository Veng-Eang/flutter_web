import 'package:flutter/material.dart';
import 'package:portfolio/common/utils/adaptive.dart';
import 'package:portfolio/common/widget/public_master_layout/public_master_layout.dart';
import 'package:portfolio/features/home/widget/about/about.dart';
import 'package:portfolio/features/home/widget/intro/intro.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 300));

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = heightOfScreen(context);
    double w = widthOfScreen(context);
    return PublicMasterLayout(body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Intro(),
                    About(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),);
  }
}
