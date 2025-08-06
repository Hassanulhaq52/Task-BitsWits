// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:task_bitswits/routes/app_screens.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//
//           designSize: Size(360, 690),
//           minTextAdapt: true,
//           splitScreenMode: true,
//
//       child: GetMaterialApp(
//           debugShowCheckedModeBanner: false,
//           initialRoute: AppRoutes.login,
//           getPages: AppPages.pages),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_bitswits/routes/app_screens.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance(); // Optional pre-warmup
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.login,
          getPages: AppPages.pages,
          home: child, // 👈 MUST pass child here
        );
      },
      child: const SizedBox(), // 👈 You can give a placeholder, or set up your real home here
    );
  }
}
