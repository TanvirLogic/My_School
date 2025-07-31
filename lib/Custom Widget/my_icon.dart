import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key, required this.totalRadius, required this.iconRadius, required this.iconSize, this.Color, this.IconData});
  final double totalRadius;
  final double iconRadius;
  final double iconSize;
  final Color;
  final IconData;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius:
      totalRadius, // Controls the overall size of the circular area including the border
      backgroundColor: Colors.black, // The color of the circular border

      child: CircleAvatar(
        radius:
        iconRadius, // Controls the size of the inner circle where the icon resides
        backgroundColor: Colors.white, // The background color for the icon
        child: Icon(
          IconData,
          size: iconSize, // Size of the icon itself
          color: Color,
        ),
      ),
    );
  }
}
