
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget DiscoverCard({
  required String name,
  required String imageUrl,
  required String description,
  required Color circleColor,
}) {
  return Container(
    width: 159.w,
    height: 184.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14.r),
      border: Border.all(color: const Color(0x40A7B9BF), width: 1),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          blurRadius: 6,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    padding: EdgeInsets.all(12.w),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 94.w,
          height: 94.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleColor,
          ),
          child: Center(
            child: Image.network(
              imageUrl,
              width: 55.w,
              height: 55.h,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) =>
                  Icon(Icons.broken_image, size: 30.sp),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
            fontFamily: 'Montserrat',
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          description,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: const Color(0xFF909AA9),
            fontSize: 11.sp,
            fontFamily: 'Montserrat',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}