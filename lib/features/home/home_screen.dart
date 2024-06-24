import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/utils/adaptive.dart';
import 'package:portfolio/common/widget/scroll_behaviour.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/features/home/widget/about/about.dart';
import 'package:portfolio/features/home/widget/drawer/drawer.dart';
import 'package:portfolio/features/home/widget/intro/intro.dart';
import 'package:portfolio/features/home/widget/nav_bar/nav_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rive/rive.dart';

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
    final drawer = (w < 950 ? const AppDrawer() : null);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: NavBar(),
      ),
      drawer: drawer,
      floatingActionButton: ScaleTransition(
        scale: _animation,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            FontAwesomeIcons.arrowUp,
            size: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: const Column(
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
      ),
    );
  }
}
