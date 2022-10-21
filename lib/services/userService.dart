import 'dart:convert';

import 'package:app_dynamics/models/listUserResponse.dart';
import 'package:app_dynamics/services/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../global/environment.dart';

class UserService extends ChangeNotifier {
  final String _baseUrl = "https://compras.dynamics.life/api";
  final List users = [];
  bool isLoading = true;
  UserService() {
    this.loadUser();
  }
  Future loadUser() async {
    this.isLoading = true;
    notifyListeners();
    final resp =
        await http.get(Uri.parse('${Environment.apiUrl}/user'), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + await AuthService.getToken(),
    });
    final result = json.decode(resp.body);
    final iterable = result["data"];
    UsuariosListResponse users = new UsuariosListResponse.fromJson(iterable);

    print(users);
    this.isLoading = false;
    notifyListeners();

    ///
  }
}
