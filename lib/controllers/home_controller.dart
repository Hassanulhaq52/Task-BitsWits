// import 'package:get/get.dart';
// import 'package:task_bitswits/services/home_service.dart';
//
// class HomeController extends GetxController {
//   final HomeService _homeService = HomeService();
//
//   var isLoading = false.obs;
//   var homeData = {}.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchHomeData();
//   }
//
//   void fetchHomeData() async {
//     isLoading.value = true;
//
//     final response = await _homeService.fetchHomeData();
//
//     if (response != null && response['success'] == true) {
//       homeData.value = response['data'] ?? {};
//     } else {
//       Get.snackbar('Error', 'Failed to load home data');
//     }
//
//     isLoading.value = false;
//   }
// }



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
    print("Home API response: $response"); // 👈 Add this line

    if (response != null && response['success'] == true) {
      HomeModel homeResponse = HomeModel.fromJson(response);
      homeData.value = homeResponse.data;
      print('Home data: ${homeData.value}');
    } else {
      Get.snackbar('Error', 'Failed to load home data');
    }

    isLoading.value = false;
  }



  // void fetchHomeData() async {
  //   isLoading.value = true;
  //
  //   final response = await _homeService.fetchHomeData();
  //
  //   if (response != null && response['success'] == true) {
  //     HomeResponse homeResponse = HomeResponse.fromJson(response);
  //     homeData.value = homeResponse.data;
  //     print('Home data: $homeData');
  //   } else {
  //     Get.snackbar('Error', 'Failed to load home data');
  //   }
  //
  //   isLoading.value = false;
  // }

  List<Target> get dailyTargets => homeData.value?.dailyTargets ?? [];
  List<DigestionDay> get digestionDaily => homeData.value?.digestionDaily ?? [];
  List<Recommendation> get recommendations => homeData.value?.recommendations ?? [];
  List<Category> get categories => homeData.value?.categories ?? [];
}
