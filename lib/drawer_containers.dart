import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerContainers extends StatelessWidget {
  const DrawerContainers({super.key,
  required this.textContent,
  required this.containerColor,
  required this.textColor,
  this.svgPath = ''
  });
  final String textContent;
  final Color containerColor;
  final Color textColor;
  final String svgPath;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical:14),
          decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(12)),
          child: Row(

            children: [
              svgPath.isNotEmpty ? SvgPicture.asset(svgPath) : SizedBox.shrink(),
              SizedBox(width: svgPath.isNotEmpty ? 8 : 0),
              Text(
                textContent,
                style: TextStyle(
                  color : textColor,
                  fontFamily: 'Kunaari',
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
          ),
      ],
    );
  }
}