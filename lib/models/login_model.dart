class LoginModel {
  final bool success;
  final String message;
  final UserData? data;

  LoginModel({required this.success, required this.message, this.data});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      success: json['success'],
      message: json['message'],
      data: json['data'] != null ? UserData.fromJson(json['data']) : null,
    );
  }
}

class UserData {
  final int userId;
  final String name;
  final String email;
  final String accessToken;

  UserData({
    required this.userId,
    required this.name,
    required this.email,
    required this.accessToken,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      userId: json['user_id'],
      name: json['name'],
      email: json['email'],
      accessToken: json['access_token'],
    );
  }
}
