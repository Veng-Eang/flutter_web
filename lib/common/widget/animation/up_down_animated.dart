import 'package:flutter/material.dart';

class UpDownAnimated extends StatefulWidget {
  const UpDownAnimated({
    super.key,
    required this.child,
    this.reverse,
  });
  final bool? reverse;
  final Widget child;
  @override
  State<UpDownAnimated> createState() => _UpDownAnimatedState();
}

class _UpDownAnimatedState extends State<UpDownAnimated>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
  ).animate(_animationController);

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
