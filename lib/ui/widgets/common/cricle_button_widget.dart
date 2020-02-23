import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final double size;
  final Color color;
  final List<Color> gradiantColors;
  final String iconPath;

  CircleButtonWidget(this.size, this.color, this.gradiantColors, this.iconPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        shape: CircleBorder(),
        gradient: LinearGradient(
            colors: gradiantColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: ImageIcon(
        AssetImage(iconPath),
        size: size,
        color: color,
      ),
    );
  }
}
