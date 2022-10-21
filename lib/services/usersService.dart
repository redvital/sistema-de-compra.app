import 'package:app_dynamics/global/environment.dart';

import 'package:app_dynamics/models/listUserResponse.dart';

import 'package:app_dynamics/services/authServies.dart';

import 'package:http/http.dart' as http;

/*class UsersService {
  Future<List<Datum>> getUsers() async {
    try {
      final resp =
          await http.get(Uri.parse('${Environment.apiUrl}/user'), headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + await AuthService.getToken(),
      });
      final usuariosResponse = usuariosListResponseFromJson(resp.body);
      return usuariosResponse;
    } catch (e) {
      return [];
    }
  }
}*/
