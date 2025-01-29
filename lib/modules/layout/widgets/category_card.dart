import 'package:evently/core/extensions/size_ext.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/color_palette.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 0.9.width,
      height: 0.25.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/category/meeting.png"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorPalette.lightCyan,
            ),
            child: Text(
              '21\nNOV',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorPalette.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: ColorPalette.white,
            ),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Meeting for Updating The Development Method ",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorPalette.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                8.spaceHorizontal,
                Icon(
                  Icons.favorite,
                  color: ColorPalette.primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
