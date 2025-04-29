import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;

  const CircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 400, // Make sure this is large enough
    required this.backgroundColor,
    this.padding,
    this.margin,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
