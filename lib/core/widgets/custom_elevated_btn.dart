import 'package:flutter/material.dart';

import '../theme/color_palette.dart';

class CustomElevatedBtn extends StatelessWidget {
  final String title;
  final VoidCallback? onTab;
  final Color bgColor;
  final double borderRadius;
  final Color titleColor;

  const CustomElevatedBtn({
    super.key,
    required this.title,
    this.onTab,
    this.bgColor = ColorPalette.primaryColor,
    this.titleColor = ColorPalette.white,
    this.borderRadius = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        padding: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: 16,
        ),
      ),
    );
  }
}