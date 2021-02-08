import 'package:flutter/material.dart';

class RoundFlatButton extends StatelessWidget {
  final Function onTap;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final Widget child;

  RoundFlatButton({
    this.onTap,
    this.backgroundColor,
    this.borderRadius,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
