class HomeModel {
  final bool success;
  final String message;
  final HomeData? data;

  HomeModel({required this.success, required this.message, this.data});

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        success: json['success'],
        message: json['message'],
        data: json['data'] != null ? HomeData.fromJson(json['data']) : null,
      );
}

class HomeData {
  final List<Target> dailyTargets;
  final List<DigestionDay> digestionDaily;
  final List<DigestionWeek> digestionWeekly;
  final WeeklyMood weeklyMood;
  final List<FoodIntake> foodIntakePie;
  final List<String> waterIntake;
  final MicroNutrientBar micronutrientBar;
  final List<Recommendation> recommendations;
  final List<Category> categories;

  HomeData({
    required this.dailyTargets,
    required this.digestionDaily,
    required this.digestionWeekly,
    required this.weeklyMood,
    required this.foodIntakePie,
    required this.waterIntake,
    required this.micronutrientBar,
    required this.recommendations,
    required this.categories,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    final graphs = json['graphs'] ?? {};
    final digestionChart = graphs['digestion_chart'] ?? {};

    return HomeData(
      dailyTargets: (json['daily_targets'] as List)
          .map((e) => Target.fromJson(e))
          .toList(),
      digestionDaily: (digestionChart['daily'] as List)
          .map((e) => DigestionDay.fromJson(e))
          .toList(),
      digestionWeekly: (digestionChart['weekly'] as List)
          .map((e) => DigestionWeek.fromJson(e))
          .toList(),
      weeklyMood: WeeklyMood.fromJson(digestionChart['weekly_mood']),
      foodIntakePie: (graphs['food_intake_pie'] as List)
          .map((e) => FoodIntake.fromJson(e))
          .toList(),
      waterIntake: List<String>.from(graphs['water_intake'] ?? []),
      micronutrientBar:
          MicroNutrientBar.fromJson(graphs['micronutrient_bar'] ?? {}),
      recommendations: (json['recommendations'] as List)
          .map((e) => Recommendation.fromJson(e))
          .toList(),
      categories: (json['categories'] as List)
          .map((e) => Category.fromJson(e))
          .toList(),
    );
  }
}

class Target {
  final String name;
  final num totalTarget;
  final num achievedTarget;

  Target({
    required this.name,
    required this.totalTarget,
    required this.achievedTarget,
  });

  factory Target.fromJson(Map<String, dynamic> json) => Target(
        name: json['name'],
        totalTarget: json['total_target'],
        achievedTarget: json['achieved_target'],
      );
}

class DigestionDay {
  final String date;
  final num value;

  DigestionDay({required this.date, required this.value});

  factory DigestionDay.fromJson(Map<String, dynamic> json) =>
      DigestionDay(date: json['date'], value: json['value']);
}

class DigestionWeek {
  final String week;
  final num value;

  DigestionWeek({required this.week, required this.value});

  factory DigestionWeek.fromJson(Map<String, dynamic> json) =>
      DigestionWeek(week: json['week'], value: json['value']);
}

class WeeklyMood {
  final List<String> moods;
  final List<String> days;
  final List<num> values;

  WeeklyMood({
    required this.moods,
    required this.days,
    required this.values,
  });

  factory WeeklyMood.fromJson(Map<String, dynamic> json) => WeeklyMood(
        moods: List<String>.from(json['moods'] ?? []),
        days: List<String>.from(json['days'] ?? []),
        values: List<num>.from(json['values'] ?? []),
      );
}

class FoodIntake {
  final String meal;
  final num percentage;
  final num calories;

  FoodIntake({
    required this.meal,
    required this.percentage,
    required this.calories,
  });

  factory FoodIntake.fromJson(Map<String, dynamic> json) => FoodIntake(
        meal: json['meal'],
        percentage: json['percentage'],
        calories: json['calories'],
      );
}

class MicroNutrientBar {
  final List<num> days;
  final List<num> values;

  MicroNutrientBar({
    required this.days,
    required this.values,
  });

  factory MicroNutrientBar.fromJson(Map<String, dynamic> json) =>
      MicroNutrientBar(
        days: List<num>.from(json['days'] ?? []),
        values: List<num>.from(json['values'] ?? []),
      );
}

class Recommendation {
  final String heading;
  final String image;
  final int durationInDays;
  final String dietPlan;

  Recommendation({
    required this.heading,
    required this.image,
    required this.durationInDays,
    required this.dietPlan,
  });

  factory Recommendation.fromJson(Map<String, dynamic> json) => Recommendation(
        heading: json['heading'],
        image: json['image'],
        durationInDays: json['duration_in_days'],
        dietPlan: json['diet_plan'],
      );
}

class Category {
  final String name;
  final String image;
  final String description;

  Category({
    required this.name,
    required this.image,
    required this.description,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json['name'],
        image: json['image'],
        description: json['description'],
      );
}
