import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/presentation/contact/desktop/contact_desktop.dart';
import 'package:portfolio/features/landing/presentation/contact/mobile/contact_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context)=> const ContactDesktop(),
      tablet: (context) => const ContactMobile(),
      mobile: (context) => const ContactMobile(),
    );
  }
}