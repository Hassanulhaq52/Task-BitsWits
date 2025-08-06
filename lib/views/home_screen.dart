// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../controllers/home_controller.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           "Hi Fahma",
//           style: TextStyle(
//             fontSize: 18.sp,
//             fontWeight: FontWeight.w600,
//             fontFamily: 'Montserrat',
//             color: Colors.black,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 16.w),
//             // child: CircleAvatar(
//             //   backgroundImage: AssetImage('assets/images/user.png'),
//             // ),
//           )
//         ],
//       ),
//       body: Obx(() {
//         final data = controller.homeData.value;
//         if (data == null) {
//           return Center(child: CircularProgressIndicator());
//         }
//
//         return SingleChildScrollView(
//           padding: EdgeInsets.all(16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               /// Daily Targets
//               Text("Daily Targets",
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat')),
//               SizedBox(height: 10.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: data.dailyTargets
//                     .map((target) => _TargetCard(title: target.name, value: target.achievedTarget.toString()))
//                     .toList(),
//               ),
//               SizedBox(height: 20.h),
//
//               /// Digestion Chart (Placeholder)
//               Text("Digestion Chart",
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat')),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 200.h,
//                 decoration: BoxDecoration(
//                   color: Colors.green[50],
//                   borderRadius: BorderRadius.circular(20.r),
//                 ),
//                 child: Center(child: Text("Chart Placeholder")),
//               ),
//               SizedBox(height: 20.h),
//
//               /// Recommendations
//               Text("Recommendations",
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat')),
//               SizedBox(height: 10.h),
//               Column(
//                 children: data.recommendations
//                     .map((rec) => _RecommendationCard(text: rec.toString()))
//                     .toList(),
//               ),
//               SizedBox(height: 20.h),
//
//               /// Discover
//               Text("Discover",
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat')),
//               SizedBox(height: 10.h),
//               SizedBox(
//                 height: 120.h,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: data.categories.length,
//                   itemBuilder: (context, index) {
//                     final item = data.categories[index];
//                     return _DiscoverCard(title: item.name);
//                   },
//                 ),
//               ),
//               SizedBox(height: 20.h),
//
//               /// Ads Banner
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.all(20.w),
//                 decoration: BoxDecoration(
//                   color: Colors.blue[100],
//                   borderRadius: BorderRadius.circular(20.r),
//                 ),
//                 child: Text("Ad Banner Here",
//                     style: TextStyle(
//                         fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
//               ),
//               SizedBox(height: 30.h),
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }
//
// class _TargetCard extends StatelessWidget {
//   final String title;
//   final String value;
//   const _TargetCard({required this.title, required this.value});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 75.w,
//       padding: EdgeInsets.all(10.w),
//       decoration: BoxDecoration(
//         color: Colors.green.shade100,
//         borderRadius: BorderRadius.circular(15.r),
//       ),
//       child: Column(
//         children: [
//           Text(
//             value,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16.sp,
//               fontFamily: 'Montserrat',
//             ),
//           ),
//           SizedBox(height: 5.h),
//           Text(
//             title,
//             style: TextStyle(fontSize: 12.sp, fontFamily: 'Montserrat'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _RecommendationCard extends StatelessWidget {
//   final String text;
//   const _RecommendationCard({required this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 5.h),
//       padding: EdgeInsets.all(12.w),
//       decoration: BoxDecoration(
//         color: Colors.orange.shade100,
//         borderRadius: BorderRadius.circular(15.r),
//       ),
//       child: Row(
//         children: [
//           Icon(Icons.check_circle_outline, color: Colors.orange),
//           SizedBox(width: 10.w),
//           Expanded(
//             child: Text(
//               text,
//               style: TextStyle(fontFamily: 'Montserrat'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _DiscoverCard extends StatelessWidget {
//   final String title;
//   const _DiscoverCard({required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 10.w),
//       padding: EdgeInsets.all(12.w),
//       width: 100.w,
//       decoration: BoxDecoration(
//         color: Colors.purple.shade100,
//         borderRadius: BorderRadius.circular(15.r),
//       ),
//       child: Center(
//         child: Text(
//           title,
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontFamily: 'Montserrat',
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }


//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../controllers/home_controller.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           "Hi Fahma",
//           style: TextStyle(
//             fontSize: 18.sp,
//             fontWeight: FontWeight.w600,
//             fontFamily: 'Montserrat',
//             color: Colors.black,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 16.w),
//             child: CircleAvatar(
//               backgroundImage: AssetImage('assets/images/user.png'),
//             ),
//           )
//         ],
//       ),
//       body: Obx(() {
//         final data = controller.homeData.value;
//         if (data == null) {
//           return Center(child: CircularProgressIndicator());
//         }
//
//         return SingleChildScrollView(
//           padding: EdgeInsets.all(16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               /// Daily Targets
//               Text("Daily Targets",
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat')),
//               SizedBox(height: 10.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: data.dailyTargets
//                     .map((target) => _TargetCard(
//                   title: target.name,
//                   value: '${target.achievedTarget}/${target.totalTarget}',
//                 ))
//                     .toList(),
//               ),
//               SizedBox(height: 20.h),
//
//               /// Digestion Chart (Placeholder)
//               Text("Digestion Chart",
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat')),
//               SizedBox(height: 10.h),
//               Container(
//                 height: 200.h,
//                 decoration: BoxDecoration(
//                   color: Colors.green[50],
//                   borderRadius: BorderRadius.circular(20.r),
//                 ),
//                 child: Center(child: Text("Chart Placeholder")),
//               ),
//               SizedBox(height: 20.h),
//
//               /// Recommendations
//               Text("Recommendations",
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat')),
//               SizedBox(height: 10.h),
//               Column(
//                 children: data.recommendations
//                     .map((rec) => _RecommendationCard(
//                   heading: rec.heading,
//                   dietPlan: rec.dietPlan,
//                 ))
//                     .toList(),
//               ),
//               SizedBox(height: 20.h),
//
//               /// Discover
//               Text("Discover",
//                   style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat')),
//               SizedBox(height: 10.h),
//               SizedBox(
//                 height: 120.h,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: data.categories.length,
//                   itemBuilder: (context, index) {
//                     final item = data.categories[index];
//                     return _DiscoverCard(title: item.name);
//                   },
//                 ),
//               ),
//               SizedBox(height: 20.h),
//
//               /// Ads Banner
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.all(20.w),
//                 decoration: BoxDecoration(
//                   color: Colors.blue[100],
//                   borderRadius: BorderRadius.circular(20.r),
//                 ),
//                 child: Text("Ad Banner Here",
//                     style: TextStyle(
//                         fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
//               ),
//               SizedBox(height: 30.h),
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }
//
// class _TargetCard extends StatelessWidget {
//   final String title;
//   final String value;
//   const _TargetCard({required this.title, required this.value});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 75.w,
//       padding: EdgeInsets.all(10.w),
//       decoration: BoxDecoration(
//         color: Colors.green.shade100,
//         borderRadius: BorderRadius.circular(15.r),
//       ),
//       child: Column(
//         children: [
//           Text(
//             value,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16.sp,
//               fontFamily: 'Montserrat',
//             ),
//           ),
//           SizedBox(height: 5.h),
//           Text(
//             title,
//             style: TextStyle(fontSize: 12.sp, fontFamily: 'Montserrat'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _RecommendationCard extends StatelessWidget {
//   final String heading;
//   final String dietPlan;
//   const _RecommendationCard({required this.heading, required this.dietPlan});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 5.h),
//       padding: EdgeInsets.all(12.w),
//       decoration: BoxDecoration(
//         color: Colors.orange.shade100,
//         borderRadius: BorderRadius.circular(15.r),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             heading,
//             style: TextStyle(
//                 fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 5.h),
//           Text(
//             dietPlan,
//             style: TextStyle(fontFamily: 'Montserrat'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _DiscoverCard extends StatelessWidget {
//   final String title;
//   const _DiscoverCard({required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 10.w),
//       padding: EdgeInsets.all(12.w),
//       width: 100.w,
//       decoration: BoxDecoration(
//         color: Colors.purple.shade100,
//         borderRadius: BorderRadius.circular(15.r),
//       ),
//       child: Center(
//         child: Text(
//           title,
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontFamily: 'Montserrat',
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }


// First Section

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:task_bitswits/controllers/home_controller.dart';
//
// class HomeScreen extends StatelessWidget {
//   final HomeController controller = Get.put(HomeController());
//
//   final Map<String, Color> targetColors = {
//     'carbs': Colors.amber,
//     'protien': Colors.red,
//     'fat': Colors.green,
//     'calories': Colors.blue,
//   };
//
//   String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xfff5f5f5),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text.rich(
//           TextSpan(
//             children: [
//               TextSpan(
//                 text: "Nutri",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.green,
//                   fontSize: 20,
//                 ),
//               ),
//               TextSpan(
//                 text: "Snap",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         actions: const [
//           Icon(Icons.timer_outlined, color: Colors.black),
//           SizedBox(width: 16),
//           Icon(Icons.chat_bubble_outline, color: Colors.black),
//           SizedBox(width: 16),
//           Icon(Icons.notifications_none, color: Colors.black),
//           SizedBox(width: 16),
//         ],
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(25),
//           child: const Padding(
//             padding: EdgeInsets.only(bottom: 8),
//             child: Text(
//               "cuz life’s busy.",
//               style: TextStyle(color: Colors.redAccent, fontSize: 12),
//             ),
//           ),
//         ),
//       ),
//       body: Obx(() {
//         if (controller.isLoading.value) {
//           return const Center(child: CircularProgressIndicator());
//         }
//
//         return SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//                     child: Text(
//                       "Daily Target",
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   GridView.count(
//                     crossAxisCount: 2,
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     padding: const EdgeInsets.all(12.0),
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                     childAspectRatio: 1.5,
//                     children: controller.dailyTargets.map((target) {
//                       final name = target.name.toLowerCase();
//                       final color = targetColors[name] ?? Colors.grey;
//                       return _buildTargetCard(
//                         label: capitalize(name),
//                         value: target.achievedTarget,
//                         max: target.totalTarget,
//                         color: color,
//                       );
//                     }).toList(),
//                   ),
//                   // Optional: Add "Today" section or charts below here
//                 ],
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
//
//   Widget _buildTargetCard({
//     required String label,
//     required num value,
//     required num max,
//     required Color color,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 6,
//             offset: Offset(2, 4),
//           ),
//         ],
//       ),
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
//           const SizedBox(height: 8),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 "$value",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: color,
//                 ),
//               ),
//               Text(
//                 "/$max${label == 'Calories' ? '' : 'g'}",
//                 style: TextStyle(color: Colors.grey[600]),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


//  Chart Added
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:task_bitswits/controllers/home_controller.dart';
//
// class HomeScreen extends StatelessWidget {
//   final HomeController controller = Get.put(HomeController());
//
//   final Map<String, Color> targetColors = {
//     'carbs': Colors.amber,
//     'protien': Colors.red,
//     'fat': Colors.green,
//     'calories': Colors.blue,
//   };
//
//   String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xfff5f5f5),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text.rich(
//           TextSpan(
//             children: [
//               TextSpan(
//                 text: "Nutri",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.green,
//                   fontSize: 20,
//                 ),
//               ),
//               TextSpan(
//                 text: "Snap",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         actions: const [
//           Icon(Icons.timer_outlined, color: Colors.black),
//           SizedBox(width: 16),
//           Icon(Icons.chat_bubble_outline, color: Colors.black),
//           SizedBox(width: 16),
//           Icon(Icons.notifications_none, color: Colors.black),
//           SizedBox(width: 16),
//         ],
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(25),
//           child: const Padding(
//             padding: EdgeInsets.only(bottom: 8),
//             child: Text(
//               "cuz life’s busy.",
//               style: TextStyle(color: Colors.redAccent, fontSize: 12),
//             ),
//           ),
//         ),
//       ),
//       body: Obx(() {
//         if (controller.isLoading.value) {
//           return const Center(child: CircularProgressIndicator());
//         }
//
//         return SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Daily Target
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//                     child: Text(
//                       "Daily Target",
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   GridView.count(
//                     crossAxisCount: 2,
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     padding: const EdgeInsets.all(12.0),
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                     childAspectRatio: 2.4,
//                     children: controller.dailyTargets.map((target) {
//                       final name = target.name.toLowerCase();
//                       final color = targetColors[name] ?? Colors.grey;
//                       return _buildTargetCard(
//                         label: capitalize(name),
//                         value: target.achievedTarget,
//                         max: target.totalTarget,
//                         color: color,
//                       );
//                     }).toList(),
//                   ),
//
//                   // Today – Digestion
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                     child: Text(
//                       "Today",
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   DigestionChartCard(
//                     digestionValues: controller.digestionDaily
//                         .map((e) => e.value.toDouble())
//                         .toList(),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
//
//   Widget _buildTargetCard({
//     required String label,
//     required num value,
//     required num max,
//     required Color color,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 6,
//             offset: Offset(2, 4),
//           ),
//         ],
//       ),
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
//           const SizedBox(height: 8),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 "$value",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: color,
//                 ),
//               ),
//               Text(
//                 "/$max${label == 'Calories' ? '' : 'g'}",
//                 style: TextStyle(color: Colors.grey[600]),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
// class DigestionChartCard extends StatelessWidget {
//   final List<double> digestionValues;
//
//   const DigestionChartCard({super.key, required this.digestionValues});
//
//   @override
//   Widget build(BuildContext context) {
//     final moods = ['😍', '😊', '😐', '😴', '😡'];
//     final days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
//
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Header
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Digestion", style: TextStyle(fontWeight: FontWeight.bold)),
//                   Text("Weekly", style: TextStyle(color: Colors.grey, fontSize: 12)),
//                 ],
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: const Color(0xfff0f0f0),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Row(
//                   children: const [
//                     Text("Weekly", style: TextStyle(fontSize: 12)),
//                     Icon(Icons.keyboard_arrow_down, size: 16),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//
//           // Chart Row
//           SizedBox(
//             height: 180,
//             child: Row(
//               children: [
//                 // Mood icons
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: moods.map((e) => Text(e, style: const TextStyle(fontSize: 18))).toList(),
//                 ),
//                 const SizedBox(width: 8),
//                 // Chart
//                 Expanded(
//                   child: LineChart(
//                     LineChartData(
//                       lineBarsData: [
//                         LineChartBarData(
//                           isCurved: true,
//                           spots: List.generate(
//                             digestionValues.length,
//                                 (index) => FlSpot(index.toDouble(), digestionValues[index]),
//                           ),
//                           isStrokeCapRound: true,
//                           dotData: FlDotData(show: false),
//                           belowBarData: BarAreaData(
//                             show: true,
//                             color: Colors.lightBlueAccent.withOpacity(0.2),
//                           ),
//                           color: Colors.cyan,
//                           barWidth: 3,
//                         ),
//                       ],
//                       titlesData: FlTitlesData(
//                         leftTitles: AxisTitles(
//                           sideTitles: SideTitles(showTitles: false),
//                         ),
//                         rightTitles: AxisTitles(
//                           sideTitles: SideTitles(showTitles: false),
//                         ),
//                         topTitles: AxisTitles(
//                           sideTitles: SideTitles(showTitles: false),
//                         ),
//                         bottomTitles: AxisTitles(
//                           sideTitles: SideTitles(
//                             showTitles: true,
//                             reservedSize: 22,
//                             getTitlesWidget: (value, meta) {
//                               final index = value.toInt();
//                               return Text(
//                                 index >= 0 && index < days.length ? days[index] : '',
//                                 style: const TextStyle(fontSize: 12),
//                               );
//                             },
//                             interval: 1,
//                           ),
//                         ),
//                       ),
//                       gridData: FlGridData(show: false),
//                       borderData: FlBorderData(show: false),
//                       minY: 0,
//                       maxY: 4,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// Discover also added

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';


class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Obx(
              () =>
          controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0),
                  child: Text("Daily Target", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(12.0),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2,
                  children: controller.dailyTargets.map((target) {
                    return _buildTargetCard(
                      label: target.name,
                      value: target.achievedTarget,
                      max: target.totalTarget,
                    );
                  }).toList(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0),
                  child: Text("Today", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                DigestionChartCard(digestionValues: controller.digestionDaily
                        .map((e) => e.value.toDouble())
                        .toList(),),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0),
                  child: Text("Discover", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                    children: controller.categories.map((category) {
                      return _buildDiscoverCard(
                        name: category.name,
                        imageUrl: category.image,
                        description: category.description,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTargetCard({
    required String label,
    required num value,
    required num max,
  }) {
    Color color = Colors.grey;
    if (label.toLowerCase() == "carbs") color = Colors.orange;
    if (label.toLowerCase() == "protein") color = Colors.red;
    if (label.toLowerCase() == "fat") color = Colors.green;
    if (label.toLowerCase() == "calories") color = Colors.blue;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${value.toInt()}",
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold, color: color),
                ),
                TextSpan(
                  text: "/${max.toInt()}${label.toLowerCase() == "calories"
                      ? ''
                      : 'g'}",
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  class DigestionChartCard extends StatelessWidget {
  final List<double> digestionValues;

  DigestionChartCard({super.key, required this.digestionValues});

  @override
  Widget build(BuildContext context) {
  final moods = ['😍', '😊', '😐', '😴', '😡'];
  final days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  return Container(
  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(20),
  boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
  ),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  // Header
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text("Digestion", style: TextStyle(fontWeight: FontWeight.bold)),
  Text("Weekly", style: TextStyle(color: Colors.grey, fontSize: 12)),
  ],
  ),
  Container(
  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  decoration: BoxDecoration(
  color: const Color(0xfff0f0f0),
  borderRadius: BorderRadius.circular(12),
  ),
  child: Row(
  children: const [
  Text("Weekly", style: TextStyle(fontSize: 12)),
  Icon(Icons.keyboard_arrow_down, size: 16),
  ],
  ),
  ),
  ],
  ),
  const SizedBox(height: 16),

  // Chart Row
  SizedBox(
  height: 180,
  child: Row(
  children: [
  // Mood icons
  Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: moods.map((e) => Text(e, style: const TextStyle(fontSize: 18))).toList(),
  ),
  const SizedBox(width: 8),
  // Chart
  Expanded(
  child: LineChart(
  LineChartData(
  lineBarsData: [
  LineChartBarData(
  isCurved: true,
  spots: List.generate(
  digestionValues.length,
  (index) => FlSpot(index.toDouble(), digestionValues[index]),
  ),
  isStrokeCapRound: true,
  dotData: FlDotData(show: false),
  belowBarData: BarAreaData(
  show: true,
  color: Colors.lightBlueAccent.withOpacity(0.2),
  ),
  color: Colors.cyan,
  barWidth: 3,
  ),
  ],
  titlesData: FlTitlesData(
  leftTitles: AxisTitles(
  sideTitles: SideTitles(showTitles: false),
  ),
  rightTitles: AxisTitles(
  sideTitles: SideTitles(showTitles: false),
  ),
  topTitles: AxisTitles(
  sideTitles: SideTitles(showTitles: false),
  ),
  bottomTitles: AxisTitles(
  sideTitles: SideTitles(
  showTitles: true,
  reservedSize: 22,
  getTitlesWidget: (value, meta) {
  final index = value.toInt();
  return Text(
  index >= 0 && index < days.length ? days[index] : '',
  style: const TextStyle(fontSize: 12),
  );
  },
  interval: 1,
  ),
  ),
  ),
  gridData: FlGridData(show: false),
  borderData: FlBorderData(show: false),
  minY: 0,
  maxY: 4,
  ),
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


  Widget _emojiTile(String emoji) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Text(emoji, style: const TextStyle(fontSize: 18)),
  );

  Widget _buildDiscoverCard({required String name, required String imageUrl, required String description}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          )
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 32,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 6),
          Text(
            description,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
