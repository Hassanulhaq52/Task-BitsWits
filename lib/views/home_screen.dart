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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_bitswits/typography.dart';

import '../controllers/home_controller.dart';
import '../models/home_model.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFE4EFF4),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "NutriSnap",
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
                color: const Color(0xFF2C6E04), // Dark green
              ),
            ),
            Text(
              "cuz life's busy.",
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'Montserrat',
                color: const Color(0xFFEA6230), // Orange red
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        // const Text.rich(
        //   TextSpan(
        //     children: [
        //       TextSpan(
        //         text: "NutriSnap",
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           color: Colors.green,
        //           fontSize: 20,
        //         ),
        //       ),
        //       // TextSpan(
        //       //   text: "Snap",
        //       //   style: TextStyle(
        //       //     fontWeight: FontWeight.bold,
        //       //     color: Colors.black,
        //       //     fontSize: 20,
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // ),
        actions: [
          Image.asset("assets/images/Chat.png"),
          // SizedBox(width: 3.w),
          Image.asset("assets/images/power.png"),
          // SizedBox(width: 3.w),
          Image.asset("assets/images/notifications.png"),

          // Icon(Image.asset('name'), color: Colors.black),
          // SizedBox(width: 16),
          // Icon(Icons.chat_bubble_outline, color: Colors.black),
          // SizedBox(width: 16),
          // Icon(Icons.notifications_none, color: Colors.black),
          // SizedBox(width: 16),
        ],
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(25),
        //   child: const Padding(
        //     padding: EdgeInsets.only(bottom: 8),
        //     child: Text(
        //       "cuz life’s busy.",
        //       style: TextStyle(color: Colors.redAccent, fontSize: 12),
        //     ),
        //   ),
        // ),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12.h,
                        ),
                        // const HeaderBar(),
                        Text(
                          "Daily Target",
                          style: AppTypography.heading,
                        ),

                        SizedBox(
                          height: 12.h,
                        ),
                        GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          // padding: const EdgeInsets.all(12.0),
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 2,
                          children: controller.dailyTargets.map((target) {
                            return _buildTargetCard(
                              label: target.name,
                              value: target.achievedTarget,
                              max: target.totalTarget,
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          "Today",
                          style: AppTypography.heading,
                        ),
                        DigestionChartCard(
                          digestionValues: controller.digestionDaily
                              .map((e) => e.value.toDouble())
                              .toList(),
                        ),

                        AdBannerSection(),
                        SizedBox(height: 16.h),

                        RecommendationSection(
                          recommendations: controller.recommendations,
                          onTapViewPlan: (item) {
                            // Implement navigation or dialog
                          },
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 12.0),
                          child: Text("Discover",
                              style: TextStyle(
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
      ),
    );
  }

  Widget _buildTargetCard({
    required String label,
    required num value,
    required num max,
  }) {
    Color color = Colors.grey;
    if (label.toLowerCase() == "carbs") color = Color(0xFFE3B104);
    if (label.toLowerCase() == "protein") color = Color(0xFFEA6230);
    if (label.toLowerCase() == "fats") color = Color(0xFF6BA814);
    if (label.toLowerCase() == "chlorine") color = Color(0xFF0165FC);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Color(0xFFA3AFB6), width: 1),
        // border: Border.all(color: Colors.black)
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 22,
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
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              fontFamily: 'Montserrat',
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${value.toInt()}",
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                    color: color,
                    fontFamily: 'Montserrat',
                  ),
                ),
                TextSpan(
                  text:
                      "/${max.toInt()}${label.toLowerCase() == "calories" ? '' : 'g'}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFA3AFB6),
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
                  Text("Digestion",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Weekly",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
                  children: moods
                      .map((e) => Text(e, style: const TextStyle(fontSize: 18)))
                      .toList(),
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
                            (index) => FlSpot(
                                index.toDouble(), digestionValues[index]),
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
                                index >= 0 && index < days.length
                                    ? days[index]
                                    : '',
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

Widget _buildDiscoverCard(
    {required String name,
    required String imageUrl,
    required String description}) {
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

class RecommendationSection extends StatelessWidget {
  final List<Recommendation> recommendations;
  final void Function(Recommendation) onTapViewPlan;

  const RecommendationSection({
    Key? key,
    required this.recommendations,
    required this.onTapViewPlan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (recommendations.isEmpty) {
      return SizedBox(); // Or show placeholder
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
            Spacer(),
            Text(
              "View All",
              style: TextStyle(
                fontSize: 13.sp,
                color: Color(0xFF6BA814),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 238.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: recommendations.length,
            separatorBuilder: (_, __) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              final item = recommendations[index];
              return RecommendationCard(
                recommendation: item,
                onTap: () => onTapViewPlan(item),
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
  final VoidCallback onTap;

  const RecommendationCard({
    Key? key,
    required this.recommendation,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 314.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
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
            padding: EdgeInsets.all(16),
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
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "${recommendation.durationInDays} days | ${recommendation.dietPlan}",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFA3AFB6)),
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
                Spacer(),

                Container(

                  width: 38.w,
                  height: 38.w,
                  decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    color: Colors.green.shade100,
                  ),
                  padding: EdgeInsets.all(8.w),
                  child: Image.asset(
                    width: 19,
height: 21,
                  'assets/images/save.png', // Replace with desired icon
                  fit: BoxFit.contain,
                ),
                  // Icon(Icons.save, color: Color(0xFF6BA814),)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AdBannerSection extends StatelessWidget {
  const AdBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.red[700],
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Image.asset("assets/images/banner.png", height: 60.h)
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text("BIG", style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: Colors.white)),
              //     Text("SEASON SALE", style: TextStyle(fontSize: 12.sp, color: Colors.white)),
              //     SizedBox(height: 4.h),
              //     Row(
              //       children: [
              //         Text("75%", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white)),
              //         SizedBox(width: 8.w),
              //         Container(
              //           padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              //           decoration: BoxDecoration(
              //             color: Colors.black,
              //             borderRadius: BorderRadius.circular(20.r),
              //           ),
              //           child: Text("BUY NOW", style: TextStyle(color: Colors.white, fontSize: 10.sp)),
              //         )
              //       ],
              //     ),
              //   ],
              // ),
              ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset("assets/images/tomato.gif",
                  height: 60.h), // Make sure the image exists
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 50.h, left: 16.w, right: 16.w, bottom: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NutriSnap",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2F7D32), // Dark green
                ),
              ),
              Text(
                "cuz life's busy.",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFFE64A19), // Orange red
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          // Icons Section
          Row(
            children: [
              _icon("assets/images/power.png"),
              SizedBox(width: 12.w),
              _icon("assets/images/Chat.png"),
              SizedBox(width: 12.w),
              _icon("assets/images/notifications.png"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _icon(String path) {
    return Image.asset(
      path,
      width: 24.w,
      height: 24.h,
    );
  }
}
