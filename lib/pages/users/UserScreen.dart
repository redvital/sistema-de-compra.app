import 'package:app_dynamics/helpers/alert.dart';

import 'package:app_dynamics/services/authServies.dart';

import 'package:app_dynamics/widgets/btnRed.dart';
import 'package:app_dynamics/widgets/customInputPage.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Container();
  }
}

class _UserScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Positioned(
                    top: 60,
                    left: 20,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.black,
                      ),
                    )),
                _ProductForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProductForm extends StatefulWidget {
  @override
  State<_ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<_ProductForm> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  late String rolCtrl;
  final nameCtrl = TextEditingController();
  final repeatPassCtrl = new TextEditingController();
  @override
  void initState() {
    rolCtrl = "Coordinador";
    super.initState();
  }

  var _items = [
    'Coordinador',
    'Vendedor',
    'Comprador',
    'Observador',
    'Almacen',
    'Artes',
    'Presidente',
    'Logistica',
  ];
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Crear Usuario",
            style: TextStyle(fontSize: 30, letterSpacing: 2),
          ),
          CustomInputPage(
              placeholder: 'Nombre',
              textTitle: 'Nombre',
              textController: nameCtrl),
          //menu desplegable
          Text('Rol'),

          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            hint: Text('Seleccionar'),
            value: rolCtrl,
            items: _items
                .map((label) => DropdownMenuItem(
                      child: Text(label.toString()),
                      value: label,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                rolCtrl = value!;
              });
            },
            isExpanded: true,
          ),
          CustomInputPage(
              placeholder: 'Email',
              textTitle: 'Email',
              textController: emailCtrl),
          CustomInputPage(
              placeholder: 'Contrase??a',
              textTitle: 'Contrase??a',
              textController: passCtrl),
          CustomInputPage(
              placeholder: 'Confirmar contrase??a',
              textTitle: 'Confirmar Contrase??a',
              textController: repeatPassCtrl),

          Center(
              child: ButtonRed(
            text: 'Enviar',
            onPressed: authService.autenticando
                ? () => null
                : () async {
                    final registroOk = await authService.register(
                        nameCtrl.text.trim(),
                        rolCtrl,
                        emailCtrl.text.trim(),
                        passCtrl.text.trim());
                    if (registroOk == true) {
                      //conectar socket server
                      mostrarAlerta(context, 'Registro Exitoso', registroOk);
                    } else {
                      mostrarAlerta(context, 'Registro Fallo', registroOk);
                    }
                  },
          ))
        ],
      )),
    );
  }
}
