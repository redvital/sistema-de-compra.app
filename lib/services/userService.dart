import 'dart:convert';

import 'package:app_dynamics/models/listUserResponse.dart';
import 'package:app_dynamics/models/meUserResponse.dart';
import 'package:app_dynamics/models/userDataResponse.dart';
import 'package:app_dynamics/services/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../global/environment.dart';

class UserService extends ChangeNotifier {
  final List<UserData> users = [];
  final List<UserData> meUser = [];
  late UserData selectedUser;
  Future<List<UserData>> getUsers() async {
    final response =
        await http.get(Uri.parse('${Environment.apiUrl}/user'), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + await AuthService.getToken(),
    });
    if (response.statusCode == 200) {
      final decoded = await json.decode(response.body);

      for (var user in decoded['data']) {
        var us = new UserData.fromJson(user);
        users.add(us);
      }
      return users;
    }
    return [];
  }

  _getMe() async {
    final response =
        await http.get(Uri.parse('${Environment.apiUrl}/me'), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + await AuthService.getToken(),
    });
    List<MeUser> user = [];
    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final data = await json.decode(response.body);

      for (var item in data) {
        MeUser userMe =
            MeUser(id: item['id'], name: item['name'], rol: item['rol']);
        user.add(userMe);
      }
      print(user);
      return user;
    } else {
      throw Exception("Fallo la conexion");
    }
  }
}
