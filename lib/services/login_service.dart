import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/login_model.dart';

class LoginService {
  Future<LoginModel> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://dev2.pulse-force.com/user_management/nutrilogin/'),
      headers: {
        // 'Content-Type': 'application/json'
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return LoginModel.fromJson(json);
    } else {
      throw Exception(
        'Login failed',
      );
    }
  }
}
