import 'package:flutter/widgets.dart';
class BellClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(15, 0); // Start at top left (slanted in)
    path.lineTo(size.width, 0); // Go to top right (full width)
    path.lineTo(size.width - 15, size.height); // Slant in to bottom right
    path.lineTo(0, size.height); // Go to bottom left (full width)
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}