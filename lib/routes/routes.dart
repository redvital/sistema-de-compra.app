import 'package:app_dynamics/pages/art/artPage.dart';
import 'package:app_dynamics/pages/companies/companyEditScreen.dart';
import 'package:app_dynamics/pages/companies/companyPage.dart';
import 'package:app_dynamics/pages/companies/companyScreen.dart';
import 'package:app_dynamics/pages/home/homePage.dart';

import 'package:app_dynamics/pages/login/loginPage.dart';
import 'package:app_dynamics/pages/mytasks/myTaskPage.dart';
import 'package:app_dynamics/pages/negotiations/negotiationsPage.dart';
import 'package:app_dynamics/pages/production/productionPage.dart';
import 'package:app_dynamics/pages/reception/receptionPage.dart';
import 'package:app_dynamics/pages/tasks/taskPage.dart';
import 'package:app_dynamics/pages/users/UserScreen.dart';
import 'package:app_dynamics/pages/users/userEditScreen.dart';
import 'package:app_dynamics/pages/users/usersPage.dart';
import 'package:flutter/cupertino.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'user': (_) => UsersPage(),
  'art': (_) => ArtPage(),
  'home': (_) => HomePage(),
  'mytask': (_) => myTaskPage(),
  'negotiations': (_) => NegotiationsPage(),
  'production': (_) => productionPage(),
  'reception': (_) => receptionPage(),
  'task': (_) => TaskPage(),
  'company': (_) => companyPage(),
  //sub-pages

  'userScreen': (_) => UserScreen(),
  'companyScreen': (_) => CompanyScreen(),
  'CompanyEditScreen': (_) => CompanyEditScreen(),
  'userEditScreen': (_) => UserEditScreen(),
};
