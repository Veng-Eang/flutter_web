import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class TabDesktop extends StatefulWidget {
  const TabDesktop({
    super.key,
    required this.title,
    required this.route,
  });

  final String title;
  final String route;

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
          style: _isSelected
              ? const TextStyle(
                  decoration: TextDecoration.underline,
                  backgroundColor: Colors.yellowAccent,
                  color: Colors.black,
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
          child: Text(widget.title),
        ),
      ),
    );
  }
}
