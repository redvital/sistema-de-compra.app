import 'dart:convert';

import 'package:app_dynamics/global/environment.dart';
import 'package:app_dynamics/models/taskResponse.dart';
import 'package:app_dynamics/services/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TaskService extends ChangeNotifier {
  final List<Datum> task = [];
  bool isLoading = true;
  TaskService() {
    this.loadTask();
  }
  Future<List<Datum>> loadTask() async {
    final response =
        await http.get(Uri.parse('${Environment.apiUrl}/tarea'), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + await AuthService.getToken(),
    });
    final Map<String, dynamic> taskMap = json.decode(response.body);
    print(taskMap);
    return loadTask();
  }
}
