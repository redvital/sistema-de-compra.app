import 'package:app_dynamics/pages/home/homePage.dart';
import 'package:app_dynamics/services/authServies.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: checkLoginState(context),
            builder: (context, snapshot) {
              return Center(child: Text('Espere..'));
            }));
  }

  Future checkLoginState(BuildContext context) async {
    final authService = Provider.of<AuthService>(context, listen: false);
    final autenticado = await authService.isLoggedIn();
    if (autenticado) {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              pageBuilder: (
                _,
                __,
                ___,
              ) =>
                  HomePage(),
              transitionDuration: Duration(milliseconds: 5)));
    } else {
      Navigator.pushReplacementNamed(context, 'login');
    }
  }
}
