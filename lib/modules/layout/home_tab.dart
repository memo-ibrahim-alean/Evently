import 'package:evently/core/extensions/size_ext.dart';
import 'package:evently/core/widgets/custom_elevated_btn.dart';
import 'package:evently/modules/layout/widgets/category_card.dart';
import 'package:evently/core/widgets/custom_tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/color_palette.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: ColorPalette.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            width: 1.width,
            height: 0.27.height,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Welcome Back ✨',
                            style: TextStyle(
                              color: ColorPalette.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'John Safwat',
                            style: TextStyle(
                              color: ColorPalette.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/icons/Sun.svg"),
                      8.spaceHorizontal,
                      CustomElevatedBtn(
                        title: 'EN',
                        titleColor: ColorPalette.primaryColor,
                        bgColor: ColorPalette.white,
                        borderRadius: 8,
                        onTab: () {},
                      ),
                    ],
                  ),
                  16.spaceVertical,
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: ColorPalette.white,
                      ),
                      4.spaceHorizontal,
                      Text(
                        "Cairo, Egypt",
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorPalette.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  8.spaceVertical,
                  Expanded(
                    child: TabBar(
                      onTap: (value) {},
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      indicatorColor: Colors.transparent,
                      dividerColor: Colors.transparent,
                      tabs: [
                        CustomTabBarItem(
                          title: 'All',
                          icon: Icons.compass_calibration_rounded,
                          isSelected: true,
                        ),
                        CustomTabBarItem(
                          title: 'Sport',
                          icon: Icons.directions_bike,
                          isSelected: false,
                        ),
                        CustomTabBarItem(
                          title: 'Birthday',
                          icon: Icons.cake,
                          isSelected: false,
                        ),
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: false,
                        ),
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: false,
                        ),
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          16.spaceVertical,
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => CategoryCard(),
              separatorBuilder: (context, index) => 16.spaceVertical,
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
