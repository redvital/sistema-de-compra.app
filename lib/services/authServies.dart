import 'dart:convert';

import 'package:app_dynamics/global/environment.dart';
import 'package:app_dynamics/models/loginResponse.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService with ChangeNotifier {
  bool _autenticando = false;
  final _storage = new FlutterSecureStorage();
  bool get autenticando => this._autenticando;
  set autenticando(bool valor) {
    this._autenticando = valor;
    notifyListeners();
  }

//Getter del token de forma statica
  static Future<String?> getToken() async {
    final _storage = new FlutterSecureStorage();
    final access_token = await _storage.read(key: 'access_token');
    return access_token;
  }

  static Future<void> deleteToken() async {
    final _storage = new FlutterSecureStorage();
    await _storage.delete(key: 'access_token');
  }

  Future<bool> login(String email, String password) async {
    this.autenticando = true;
    final data = {'email': email, 'password': password};
    final resp = await http.post(Uri.parse("${Environment.apiUrl}/login"),
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    this.autenticando = false;
    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      this._guardarToken(loginResponse.accessToken);
      print(resp.body);
      return true;
    } else {
      return false;
    }
  }

  Future register(
      String name, String rol, String email, String password) async {
    this.autenticando = true;
    final data = {
      'name': name,
      'rol': rol,
      'email': email,
      'password': password
    };
    final resp = await http.post(Uri.parse("${Environment.apiUrl}/user"),
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    this.autenticando = false;
    if (resp.statusCode == 200) {
      //print(resp.body);
      return true;
    } else {
      final respBody = jsonDecode(resp.body);
      return respBody['msg'];
    }
  }

  Future<bool> isLoggedIn() async {
    final access_token = await this._storage.read(key: 'access_token');
    final resp =
        await http.get(Uri.parse('${Environment.apiUrl}/me'), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer  $access_token',
    });

    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      print(loginResponse);
      this._guardarToken(loginResponse.accessToken);

      print('Dattitos' + resp.body);

      return true;
    } else {
      this.logout();
      return false;
    }
  }

  Future _guardarToken(String access_token) async {
    await _storage.write(key: 'access_token', value: access_token);
  }

  Future logout() async {
    await _storage.delete(key: 'access_token');
  }
}
