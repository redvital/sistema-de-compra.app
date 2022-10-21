import 'package:app_dynamics/models/listUserResponse.dart';
import 'package:flutter/material.dart';

class UserFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  late Datum user;
  UserFormProvider(this.user);
  bool isValidForm() {
    print(user.name);
    print(user.rol);
    print(user.email);

    return formKey.currentState?.validate() ?? false;
  }
}
