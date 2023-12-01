import 'package:flutter/material.dart';

class ShakeTransition extends StatelessWidget {
  const ShakeTransition({
    required this.child,
    Key? key,
    this.duration = const Duration(milliseconds: 900),
    this.offset = 140,
    this.axis = Axis.horizontal,
  }) : super(key: key);

  final Widget child;
  final Duration duration;
  final double offset;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 2, end: 0),
      curve: Curves.bounceOut,
      duration: duration,
      builder: (context, value, child) {
        return Transform.translate(
          offset: axis == Axis.horizontal
              ? Offset(value * offset, 0)
              : Offset(0, value * offset),
          child: child,
        );
      },
      child: child,
    );
  }
}
