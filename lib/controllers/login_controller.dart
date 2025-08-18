import 'package:flutter/material.dart';
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

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', response.data!.accessToken);

        Get.snackbar("Success", response.message,
            colorText: Colors.white, backgroundColor: Colors.green);
        Get.offAllNamed('/home');
      } else {
        Get.snackbar("Failed", response.message, colorText: Colors.white);
      }
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
