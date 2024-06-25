import 'package:flutter/material.dart';
import 'package:portfolio/common/widget/public_master_layout/public_master_layout.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({super.key});

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  @override
  Widget build(BuildContext context) {
    return const PublicMasterLayout(body: Center(child: Text("About me"),));
  }
}