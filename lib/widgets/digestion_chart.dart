import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/home_model.dart';

class DigestionChart extends StatefulWidget {
  final List<DigestionDay> digestionDaily;
  final List<DigestionWeek> digestionWeekly;
  final WeeklyMood? weeklyMood;

  const DigestionChart({
    super.key,
    required this.digestionDaily,
    required this.digestionWeekly,
    required this.weeklyMood,
  });

  @override
  State<DigestionChart> createState() => _DigestionChartCardState();
}

class _DigestionChartCardState extends State<DigestionChart> {
  bool isWeekly = false;

  @override
  Widget build(BuildContext context) {
    final chartValues = isWeekly
        ? widget.digestionWeekly.map((e) => e.value?.toDouble() ?? 0).toList()
        : widget.digestionDaily.map((e) => e.value?.toDouble() ?? 0).toList();

    final days = isWeekly
        ? widget.digestionWeekly.map((e) => e.week ?? '').toList()
        : widget.digestionDaily.map((e) {
            final date = DateTime.tryParse(e.date ?? '');
            return date != null ? _shortDayName(date.weekday) : '';
          }).toList();

    final moodsEmojis = ['😍', '😊', '😩', '😔', '😡'];

    return Container(
      height: 303.h,
      width: 327.w,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x40A7B9BF), width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Digestion",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      )),
                  SizedBox(height: 5.h),
                  Text(
                    isWeekly ? "Weekly" : "Daily",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA3AFB6)),
                  ),
                ],
              ),
              Container(
                width: 135.w,
                height: 45.h,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: const Color(0x1A73858F),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<bool>(
                    value: isWeekly,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFF6BA814),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: true,
                        child: Text(
                          "Weekly",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF73858F)),
                        ),
                      ),
                      DropdownMenuItem(
                        value: false,
                        child: Text(
                          "Daily",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF73858F)),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          isWeekly = value;
                        });
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 180.h,
            width: 280.w,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: moodsEmojis
                      .map((mood) =>
                          Text(mood, style: TextStyle(fontSize: 18.sp)))
                      .toList(),
                ),
                SizedBox(width: 40.w),
                Expanded(
                  child: LineChart(
                    LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          isCurved: true,
                          spots: List.generate(
                            chartValues.length,
                            (index) =>
                                FlSpot(index.toDouble(), chartValues[index]),
                          ),
                          isStrokeCapRound: true,
                          dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(
                              show: true,
                              color: const Color(0xFF0AE1EF).withOpacity(0.05)),
                          color: const Color(0xFF04BFDA),
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
                            reservedSize: 35,
                            getTitlesWidget: (value, meta) {
                              final index = value.toInt();
                              return Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    index >= 0 && index < days.length
                                        ? days[index]
                                        : '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF4F4F4F),
                                    ),
                                  ),
                                ),
                              );
                            },
                            interval: 1,
                          ),
                        ),
                      ),
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
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

  String _shortDayName(int weekday) {
    const days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
    return days[weekday - 1];
  }
}
