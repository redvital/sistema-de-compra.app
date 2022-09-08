import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routerName = 'Inicio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text('HomePage'),
      ),
    );
  }
}
