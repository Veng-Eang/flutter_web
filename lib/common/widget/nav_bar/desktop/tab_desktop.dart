import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class TabDesktop extends StatefulWidget {
  const TabDesktop({
    super.key,
    required this.title,
    required this.route,
    required this.isSelectd,
  });

  final String title;
  final String route;
  final bool isSelectd;

  @override
  State<TabDesktop> createState() => _TabDesktopState();
}

class _TabDesktopState extends State<TabDesktop> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(widget.route),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
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
        child: AnimatedDefaultTextStyle(
          style: widget.isSelectd && _isSelected
              ? const TextStyle(
                  decoration: TextDecoration.underline,
                  height: 1.2,
                  fontFamily: 'Preah',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              : _isSelected
                  ? const TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.orangeAccent,
                      height: 1.2,
                      fontFamily: 'Preah',
                      fontSize: 20,
                      fontWeight: FontWeight.bold)
                  : const TextStyle(
                      color: Colors.white,
                      height: 1.2,
                      fontFamily: 'Preah',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
          duration: const Duration(milliseconds: 150),
          child: widget.isSelectd
              ? Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.orangeAccent,
                  ),
                )
              : Text(widget.title),
        ),
      ),
    );
  }
}
