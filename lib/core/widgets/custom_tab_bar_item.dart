import 'package:evently/core/extensions/size_ext.dart';
import 'package:flutter/material.dart';

import '../theme/color_palette.dart';

class CustomTabBarItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final bool isHomeTab;

  const CustomTabBarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    this.isHomeTab = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? (isHomeTab ? ColorPalette.white : ColorPalette.primaryColor)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isHomeTab ? ColorPalette.white : ColorPalette.primaryColor,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected
                ? (isHomeTab ? ColorPalette.primaryColor : ColorPalette.white)
                : (isHomeTab ? ColorPalette.white : ColorPalette.primaryColor),
          ),
          4.spaceHorizontal,
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected
                  ? (isHomeTab ? ColorPalette.primaryColor : ColorPalette.white)
                  : (isHomeTab
                  ? ColorPalette.white
                  : ColorPalette.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
