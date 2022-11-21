import 'package:app_dynamics/provider/usersProviders.dart';
import 'package:app_dynamics/services/services.dart';
import 'package:app_dynamics/services/taskService.dart';
import 'package:provider/provider.dart';
import 'package:app_dynamics/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(
          create: (_) => UserDataProvider(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (_) => TaskService(),
          lazy: true,
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Materialapp',
      initialRoute: 'loadingPage',
      //initialRoute: 'login',
      routes: appRoutes,
    );
  }
}
