import 'package:flutter/material.dart';

class BellClipper extends CustomClipper<Path>{
@override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0); // Start at top left
    path.lineTo(size.width, 0); // Go to top right
    path.lineTo(size.width - 15, size.height); // Slant down to bottom (30px from right edge)
    path.lineTo(0, size.height); // Go to bottom left
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}