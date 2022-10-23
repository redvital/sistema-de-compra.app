import 'dart:convert';

import 'package:app_dynamics/models/listUserResponse.dart';
import 'package:app_dynamics/services/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../global/environment.dart';

class UserService extends ChangeNotifier {
  final List<Datum> users = [];
  bool isLoading = true;
  late Datum selectedUser;
  late Future<List<Datum>> _listadoUsers;
  Future<List<Datum>> loadUser() async {
    this.isLoading = true;
    notifyListeners();
    final resp =
        await http.get(Uri.parse('${Environment.apiUrl}/user'), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + await AuthService.getToken(),
    });
    final result = json.decode(resp.body);
    /*final iterable = result["data"];
    UsuariosListResponse users = new UsuariosListResponse.fromJson(result);*/
    List<dynamic> datas = result["data"];
    //final Map<String, dynamic> usermap = json.decode(datas);
//    funciona retornando los maps
    /*   datas.forEach((datas) {
      print(datas);
    });*/

    String body = utf8.decode(resp.bodyBytes);
    final jsonData = jsonDecode(body);
    for (var item in jsonData["data"]) {
      users.add(Datum(
          id: item["id"],
          rol: item["rol"],
          name: item["name"],
          email: item["email"],
          emailVerifiedAt: ["emailVerifiedAt"],
          deletedAt: item["deletedAt"],
          deviceKey: item["deviceKey"],
          isPresidente: item["isPresidente"],
          createdAt: item["createdAt"],
          updatedAt: item["updatedAt"]));
    }

    return users;

    this.isLoading = false;
    notifyListeners();
  }
}
