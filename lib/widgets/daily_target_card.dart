import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget DailyTargetCard({
  required String label,
  required num value,
  required num max,
}) {
  Color color = Colors.grey;
  if (label.toLowerCase() == "carbs") color = const Color(0xFFE3B104);
  if (label.toLowerCase() == "protein") color = const Color(0xFFEA6230);
  if (label.toLowerCase() == "fats") color = const Color(0xFF6BA814);
  if (label.toLowerCase() == "chlorine") color = const Color(0xFF0165FC);

  return Container(
    height: 69.h,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14.r),
      border: Border.all(color: const Color(0x40A7B9BF), width: 1),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          blurRadius: 22,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            fontFamily: 'Montserrat',
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "${value.toInt()}",
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w700,
                  color: color,
                  fontFamily: 'Montserrat',
                ),
              ),
              TextSpan(
                text:
                    "/${max.toInt()}${label.toLowerCase() == "calories" ? '' : 'g'}",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFA3AFB6),
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
