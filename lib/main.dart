import 'package:app_dynamics/pages/art/artPage.dart';
import 'package:app_dynamics/pages/companies/companyPage.dart';
import 'package:app_dynamics/pages/home/homePage.dart';
import 'package:app_dynamics/pages/login/loginPage.dart';
import 'package:app_dynamics/pages/mytasks/myTaskPage.dart';
import 'package:app_dynamics/pages/negotiations/negotiationsPage.dart';
import 'package:app_dynamics/pages/production/productionPage.dart';
import 'package:app_dynamics/pages/reception/receptionPage.dart';
import 'package:app_dynamics/pages/tasks/taskPage.dart';
import 'package:flutter/material.dart';

import 'pages/users/usersPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'usuarios',
      routes: {
        LoginPage.routerName: (_) => LoginPage(),
        UsersPage.routerName: (_) => UsersPage(),
        ArtPage.routerName: (_) => ArtPage(),
        companyPage.routerName: (_) => companyPage(),
        HomePage.routerName: (_) => HomePage(),
        myTaskPage.routerName: (_) => myTaskPage(),
        NegotiationsPage.routerName: (_) => NegotiationsPage(),
        productionPage.routerName: (_) => productionPage(),
        receptionPage.routerName: (_) => receptionPage(),
        TaskPage.routerName: (_) => TaskPage(),
      },
    );
  }
}
