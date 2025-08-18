import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_bitswits/utils/typography.dart';
import 'package:task_bitswits/widgets/daily_target_card.dart';

import '../controllers/home_controller.dart';

import '../widgets/banner_section.dart';
import '../widgets/digestion_chart.dart';
import '../widgets/discover_card.dart';
import '../widgets/recommendation_card.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  final List<Color> circleColors = [
    const Color(0x666BA814),
    const Color(0x66F5C107),
    const Color(0x66EA6230),
    const Color(0x66EB001B),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFE4EFF4),
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NutriSnap",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF2C6E04),
                ),
              ),
              Text(
                "cuz life's busy.",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Montserrat',
                  color: const Color(0xFFEA6230),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Image.asset("assets/images/Chat.png"),
          Image.asset("assets/images/power.png"),
          Image.asset("assets/images/notifications.png"),
        ],
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        "Daily Target",
                        style: AppTypography.heading,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.dailyTargets.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.w,
                          mainAxisSpacing: 16.h,
                          mainAxisExtent: 69.h,
                        ),
                        itemBuilder: (context, index) {
                          final target = controller.dailyTargets[index];
                          return SizedBox(
                            width: 158.w,
                            child: DailyTargetCard(
                              label: target.name,
                              value: target.achievedTarget,
                              max: target.totalTarget,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        "Today",
                        style: AppTypography.heading,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: DigestionChart(
                        digestionDaily: controller.digestionDaily,
                        digestionWeekly: controller.digestionWeekly,
                        weeklyMood: controller.weeklyMood,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    const AdBannerSection(),
                    SizedBox(height: 8.h),
                    Center(
                      child: Text(
                        'Say GoodBye to Ads, By Premium',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFA3AFB6)),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: RecommendationSection(
                        recommendations: controller.recommendations,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Text(
                          "Discover",
                          style: AppTypography.heading,
                        )),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.categories.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                          mainAxisExtent: 184.h,
                        ),
                        itemBuilder: (context, index) {
                          final category = controller.categories[index];
                          return DiscoverCard(
                            name: category.name,
                            imageUrl: category.image,
                            description: category.description,
                            circleColor:
                                circleColors[index % circleColors.length],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 58.h),
                  ],
                ),
              ),
      ),
    );
  }
}
