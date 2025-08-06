class HomeModel {
  final bool success;
  final String message;
  final HomeData? data;

  HomeModel({required this.success, required this.message, this.data});
  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    success: json['success'],
    message: json['message'],
    data: HomeData.fromJson(json['data']),
  );
}

class HomeData {
  final List<Target> dailyTargets;
  final List<DigestionDay> digestionDaily;
  final List<Recommendation> recommendations;
  final List<Category> categories;

  HomeData({
    required this.dailyTargets,
    required this.digestionDaily,
    required this.recommendations,
    required this.categories,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return HomeData(
      dailyTargets: (json['daily_targets'] as List)
          .map((e) => Target.fromJson(e))
          .toList(),
      digestionDaily: (json['graphs']['digestion_chart']['daily'] as List)
          .map((e) => DigestionDay.fromJson(e))
          .toList(),
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
  Target({required this.name, required this.totalTarget, required this.achievedTarget});
  factory Target.fromJson(Map<String, dynamic> json) =>
      Target(name: json['name'], totalTarget: json['total_target'], achievedTarget: json['achieved_target']);
}

class DigestionDay {
  final String date;
  final num value;
  DigestionDay({required this.date, required this.value});
  factory DigestionDay.fromJson(Map<String, dynamic> json) =>
      DigestionDay(date: json['date'], value: json['value']);
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
  Category({required this.name, required this.image, required this.description});
  factory Category.fromJson(Map<String, dynamic> json) => Category(
    name: json['name'], image: json['image'], description: json['description'],
  );
}
