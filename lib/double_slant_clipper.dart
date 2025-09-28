import 'package:flutter/widgets.dart';
class DoubleSlantClipper extends CustomClipper<Path> {
@override
Path getClip(Size size) {
  Path path = Path();
  path.moveTo(30, 0); // Start 30px from left at top
  path.lineTo(size.width, 0); // Go to top right corner
  path.lineTo(size.width - 30, size.height); // Slant down 30px from right at bottom
  path.lineTo(0, size.height); // Go to bottom left corner
  path.lineTo(30, 0); // Slant back up to starting point
  path.close();
  return path;
}

@override
bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}