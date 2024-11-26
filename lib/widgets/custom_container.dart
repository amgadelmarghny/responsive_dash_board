import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.padding,
    this.child,
  });
  final double? padding;

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        padding ?? 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
