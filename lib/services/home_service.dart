import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HomeService {
  final String baseUrl = 'https://dev2.pulse-force.com/user_management/gethome/';

  Future<Map<String, dynamic>?> fetchHomeData() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('accessToken');

      print('Token $token');

      if (token == null) {
        throw Exception("No access token found.");
      }

      final response = await http.get(
        Uri.parse(baseUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data;
      } else {
        print('Failed to fetch home data: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('HomeService Exception: $e');
      return null;
    }
  }
}
