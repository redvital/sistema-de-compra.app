// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.accessToken,
  });

  String accessToken;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        accessToken: json["access_token"] ?? 'access_token is null',
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
      };
}
