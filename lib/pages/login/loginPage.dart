import 'package:app_dynamics/helpers/alert.dart';
import 'package:app_dynamics/services/authServies.dart';
import 'package:app_dynamics/ui/appTheme.dart';
import 'package:app_dynamics/widgets/btnRed.dart';
import 'package:app_dynamics/widgets/customInput.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            _Form(),
          ],
        ),
      ),
    ));
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.mail,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          SizedBox(
            height: 20,
          ),
          CustomInput(
            icon: Icons.lock_clock,
            placeholder: 'Contraseña',
            isPassword: true,
            textController: passCtrl,
          ),
          SizedBox(
            height: 20,
          ),
          ButtonRed(
            text: 'Ingresar',
            onPressed: authService.autenticando
                ? () => null
                : () async {
                    FocusScope.of(context).unfocus();
                    final loginOk = await authService.login(
                        emailCtrl.text.trim(), passCtrl.text.trim());
                    if (loginOk) {
                      //navegar a ota pantalla
                      Navigator.pushReplacementNamed(context, 'home');
                    } else {
                      //mostrar alerta
                      mostrarAlerta(context, 'Login Incorrecto',
                          'Haz ingreso algun dato erroneo');
                    }
                  },
          )
        ],
      ),
    );
  }
}
