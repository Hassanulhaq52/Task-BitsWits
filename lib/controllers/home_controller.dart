import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_bitswits/models/home_model.dart';
import 'package:task_bitswits/services/home_service.dart';

class HomeController extends GetxController {
  final HomeService _homeService = HomeService();

  var isLoading = false.obs;
  Rx<HomeData?> homeData = Rx<HomeData?>(null);

  @override
  void onInit() {
    super.onInit();
    fetchHomeData();
  }

  void fetchHomeData() async {
    isLoading.value = true;

    final response = await _homeService.fetchHomeData();
    print("Home API response: $response");

    if (response != null && response['success'] == true) {
      HomeModel homeResponse = HomeModel.fromJson(response);
      homeData.value = homeResponse.data;
      print('Home data: ${homeData.value}');
    } else {
      Get.snackbar('Error', 'Failed to load home data',
          colorText: Colors.white, backgroundColor: Colors.red);
    }

    isLoading.value = false;
  }

  List<DigestionWeek> get digestionWeekly =>
      homeData.value?.digestionWeekly ?? [];

  WeeklyMood get weeklyMood =>
      homeData.value?.weeklyMood ?? WeeklyMood(days: [], moods: [], values: []);

  List<Target> get dailyTargets => homeData.value?.dailyTargets ?? [];

  List<DigestionDay> get digestionDaily => homeData.value?.digestionDaily ?? [];

  List<Recommendation> get recommendations =>
      homeData.value?.recommendations ?? [];

  List<Category> get categories => homeData.value?.categories ?? [];
}
