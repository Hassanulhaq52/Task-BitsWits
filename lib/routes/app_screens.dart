import 'package:get/get.dart';

import '../views/home_screen.dart';
import '../views/login_screen.dart';

class AppRoutes {
  static const login = '/login';
  static const home = '/home';
}

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
  ];
}