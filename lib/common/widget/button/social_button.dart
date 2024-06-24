import 'package:flutter/material.dart';

class SocialButtonData {
  final String tag;
  final String url;
  final IconData iconData;
  final Color? iconColor;
  final Color? borderColor;

  SocialButtonData({
    required this.tag,
    required this.url,
    required this.iconData,
    this.iconColor,
    this.borderColor,
  });
}

class SocialButton extends StatelessWidget {
  final String tag;
  final double width;
  final double height;
  final double elevation;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final Color buttonColor;
  final BoxDecoration? decoration;
  final VoidCallback? onPressed;

  const SocialButton({
    super.key,
    required this.tag,
    required this.width,
    required this.height,
    required this.elevation,
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
    required this.buttonColor,
    this.decoration,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: FloatingActionButton(
        elevation: elevation,
        onPressed: onPressed,
        backgroundColor: buttonColor,
        heroTag: tag,
        child: Icon(
          iconData,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
