import 'package:app_dynamics/pages/production/productionPage.dart';
import 'package:app_dynamics/pages/tasks/taskPage.dart';
import 'package:app_dynamics/routes.dart';
import 'package:flutter/material.dart';

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

        //sub-pages
        UserScreen.routerName: (_) => UserScreen(),
        UserEditScreen.routerName: (_) => UserEditScreen(),
      },
    );
  }
}
