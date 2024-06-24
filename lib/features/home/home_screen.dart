import 'package:flutter/material.dart';
import 'package:portfolio/features/home/widget/about/about.dart';
import 'package:portfolio/features/home/widget/intro/intro.dart';
import 'package:portfolio/features/home/widget/nav_bar/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBar(),
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
