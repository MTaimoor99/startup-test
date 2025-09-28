import 'package:flutter/material.dart';

class PointsClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(15, 0); // Start 15px from left at top (matches BellClipper's slant)
    path.lineTo(size.width, 0); // Go to top right
    path.lineTo(size.width, size.height); // Go to bottom right
    path.lineTo(0, size.height); // Go to bottom left
    path.lineTo(15, 0); // Slant back up to starting point
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}