import 'package:flutter/material.dart';

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(0.0, size.height);
    path.lineTo(2 * size.width / 3, size.height);
    // path.arcTo(Rect.fromLTRB(, top, right, bottom), startAngle, sweepAngle, forceMoveTo)
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}