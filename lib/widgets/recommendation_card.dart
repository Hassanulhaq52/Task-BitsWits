import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/home_model.dart';
import '../utils/typography.dart';

class RecommendationSection extends StatelessWidget {
  final List<Recommendation> recommendations;

  const RecommendationSection({
    Key? key,
    required this.recommendations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (recommendations.isEmpty) {
      return const SizedBox();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Recommendation",
              style: AppTypography.heading,
            ),
            const Spacer(),
            Text(
              "View All",
              style: TextStyle(
                fontSize: 13.sp,
                color: const Color(0xFF6BA814),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 228.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: recommendations.length,
            separatorBuilder: (_, __) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              final item = recommendations[index];
              return RecommendationCard(
                recommendation: item,
              );
            },
          ),
        ),
      ],
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final Recommendation recommendation;

  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 314.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            child: Image.network(
              recommendation.image,
              height: 158.h,
              width: double.infinity,
              fit: BoxFit.fill,
              errorBuilder: (_, __, ___) => Container(
                height: 100.h,
                color: Colors.grey.shade200,
                child: const Icon(Icons.broken_image, size: 40),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recommendation.heading,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "${recommendation.durationInDays} days | ${recommendation.dietPlan}",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFA3AFB6)),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 38.w,
                  height: 38.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0x856BA814),
                  ),
                  padding: EdgeInsets.all(8.w),
                  child: Image.asset(
                    width: 19.w,
                    height: 21.h,
                    'assets/images/save.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
