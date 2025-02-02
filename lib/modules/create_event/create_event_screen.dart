import 'package:evently/core/extensions/extensions.dart';
import 'package:evently/core/extensions/size_ext.dart';
import 'package:evently/core/widgets/custom_elevated_btn.dart';
import 'package:flutter/material.dart';

import '../../core/theme/color_palette.dart';
import '../../core/widgets/custom_tab_bar_item.dart';
import '../../core/widgets/custom_text_field.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.lightCyan,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorPalette.lightCyan,
        title: const Text(
          "Create Event",
        ),
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/images/category/meeting.png",
                        height: 0.25.height,
                        width: 1.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    16.spaceVertical,
                    SizedBox(
                      width: 1.width,
                      height: 0.10.height,
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
                            isHomeTab: false,
                          ),
                          CustomTabBarItem(
                            title: 'Sport',
                            icon: Icons.directions_bike,
                            isSelected: false,
                            isHomeTab: false,
                          ),
                          CustomTabBarItem(
                            title: 'Birthday',
                            icon: Icons.cake,
                            isSelected: false,
                            isHomeTab: false,
                          ),
                          CustomTabBarItem(
                            title: 'Sports',
                            icon: Icons.sports,
                            isSelected: false,
                            isHomeTab: false,
                          ),
                          CustomTabBarItem(
                            title: 'Sports',
                            icon: Icons.sports,
                            isSelected: false,
                            isHomeTab: false,
                          ),
                          CustomTabBarItem(
                            title: 'Sports',
                            icon: Icons.sports,
                            isSelected: false,
                            isHomeTab: false,
                          ),
                        ],
                      ),
                    ),
                    16.spaceVertical,
                    CustomTextField(
                      hint: "Event Title",
                      prefixIcon: Icon(
                        Icons.edit,
                      ),
                    ),
                    16.spaceVertical,
                    const CustomTextField(
                      minLines: 5,
                      label: "Event Description",
                    ),
                    16.spaceVertical,
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_rounded,
                          color: ColorPalette.black,
                        ),
                        8.spaceHorizontal,
                        const Text(
                          "Event Date",
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorPalette.black,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          child: const Text(
                            "Choose Date",
                            style: TextStyle(
                              fontSize: 16,
                              color: ColorPalette.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    16.spaceVertical,
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: ColorPalette.black,
                        ),
                        8.spaceHorizontal,
                        const Text(
                          "Event Time",
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorPalette.black,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          child: const Text(
                            "Choose Time",
                            style: TextStyle(
                              fontSize: 16,
                              color: ColorPalette.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    16.spaceVertical,
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: ColorPalette.primaryColor,
                        ),
                      ),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            backgroundColor: ColorPalette.primaryColor,
                            elevation: 0,
                            onPressed: () {},
                            child: Icon(
                              Icons.my_location_rounded,
                              color: ColorPalette.white,
                            ),
                          ),
                          8.spaceHorizontal,
                          Text(
                            'Choose Event Location',
                            style: TextStyle(
                              fontSize: 16,
                              color: ColorPalette.primaryColor,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            16.spaceVertical,
            SafeArea(
              child: SizedBox(
                height: 0.07.height,
                child: CustomElevatedBtn(
                  title: "Add Event",
                  onTab: () {},
                ),
              ),
            ),
          ],
        ).setHorizontalPadding(context, 0.05),
      ),
    );
  }
}
