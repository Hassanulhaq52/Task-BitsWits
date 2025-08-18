import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdBannerSection extends StatelessWidget {
  const AdBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            "assets/images/banner.png",
            height: 60.h,
            fit: BoxFit.fill,
          ),
        ),
        Image.asset(
          "assets/images/tomato.gif",
          height: 60.h,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
