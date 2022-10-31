import 'package:app_dynamics/models/userDataResponse.dart';
import 'package:app_dynamics/services/userService.dart';
import 'package:flutter/material.dart';

class UserDataProvider extends ChangeNotifier {
  List<UserData>? usersListData;
  late UserData selectedUser;
  Future<List<UserData>> getAll() async {
    if (usersListData != null) {
      return usersListData!;
    }
    var service = new UserService();
    this.usersListData = await service.getUsers();
    notifyListeners();
    return usersListData!;
  }

  Future<List<UserData>> refreshUsers() async {
    var service = new UserService();
    this.usersListData = await service.getUsers();
    notifyListeners();
    return usersListData!;
  }
}
