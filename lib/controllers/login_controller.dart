import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_bitswits/services/login_service.dart';

import '../models/login_model.dart';


class LoginController extends GetxController {
  final LoginService loginService = LoginService();

  var isLoading = false.obs;
  var loginResponse = Rxn<UserData>();

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      final response = await loginService.login(email, password);
      if (response.success && response.data != null) {
        loginResponse.value = response.data;

        // ✅ Save access token to SharedPreferences
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', response.data!.accessToken);

        Get.snackbar("Success", response.message);
        Get.offAllNamed('/home');
      } else {
        Get.snackbar("Failed", response.message);
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }



// // Future<void> login(String email, String password) async {
  // //   isLoading.value = true;
  // //   try {
  // //     final response = await loginService.login(email, password);
  // //     if (response.success && response.data != null) {
  // //       loginResponse.value = response.data;
  // //       // You can store token in SharedPreferences here
  // //       Get.snackbar("Success", response.message);
  // //       Get.offAllNamed('/home');
  // //     } else {
  // //       Get.snackbar("Failed", response.message);
  // //     }
  // //   } catch (e) {
  // //     Get.snackbar("Error", e.toString());
  // //   } finally {
  // //     isLoading.value = false;
  // //   }
  // }
}
