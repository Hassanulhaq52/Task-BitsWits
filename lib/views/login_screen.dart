import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(LoginController());

  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final RxBool obscureText = true.obs;
  final RxBool rememberMe = false.obs;

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 217.h,
              padding: EdgeInsets.only(
                top: 100,
                bottom: 40,
                left: 24.w,
                right: 24.w,
              ),
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Login to your\nAccount",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Start Your Journey With Us.",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xFFEA6230),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  TextField(
                    controller: emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(fontFamily: 'Montserrat'),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF73858F),
                      ),
                      filled: true,
                      fillColor: const Color(0x1A73858F),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Obx(() => TextField(
                        controller: passwordCtrl,
                        obscureText: obscureText.value,
                        style: const TextStyle(fontFamily: 'Montserrat'),
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xFF73858F),
                          ),
                          filled: true,
                          fillColor: const Color(0x1A73858F),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 18,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscureText.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: const Color(0x9973858F),
                            ),
                            onPressed: () =>
                                obscureText.value = !obscureText.value,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Obx(() => SizedBox(
                            width: 20.w,
                            height: 20.h,
                            child: Transform.scale(
                              scale: 1,
                              child: Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                side: const BorderSide(
                                  color: Color(0xFF73858F),
                                  width: 1,
                                ),
                                value: rememberMe.value,
                                onChanged: (val) =>
                                    rememberMe.value = val ?? false,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: -4),
                              ),
                            ),
                          )),
                      const SizedBox(width: 8),
                      const Text(
                        "Remember me",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF73858F),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: Color(0xFFF14336),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Obx(() => controller.isLoading.value
                      ? const CircularProgressIndicator()
                      : SizedBox(
                          width: double.infinity,
                          height: 48.h,
                          child: ElevatedButton(
                            onPressed: () => controller.login(
                              emailCtrl.text,
                              passwordCtrl.text,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6BA814),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(89.r),
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        )),
                  SizedBox(height: 150.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF949BAB),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6BA814),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
