import 'package:app_dynamics/ui/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  static const String routerName = 'login';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 100.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Iniciar Sesión',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 30,
            ),
            _userTextField(),
            SizedBox(
              height: 30,
            ),
            _passwordTextField(),
            SizedBox(
              height: 30,
            ),
            _bottonLogin(),
          ],
        ),
      ),
    ));
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: Color.fromARGB(211, 196, 19, 19),
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
          child: Text('Ingrese', style: TextStyle(color: Colors.white)),
        ),
      );
    });
  }

  _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          //quita autocorreccion
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecortions.authInputDecoration(
              prefixIcon: Icons.email,
              hintText: 'correo@correo.com',
              labelText: 'Correo electronico'),
          onChanged: (value) {},
        ),
      );
    });
  }

  _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          //quita autocorreccion
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecortions.authInputDecoration(
              hintText: 'contraseña',
              labelText: 'Contraseña',
              prefixIcon: Icons.lock),
          onChanged: (value) {},
        ),
      );
    });
  }
}
