import 'package:app_dynamics/ui/appTheme.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class UserEditScreen extends StatelessWidget {
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

class _ProductForm extends StatelessWidget {
  final List<String> _items = [
    'Coordinador',
    'Vendedor',
    'Comprador',
    'Observador',
    'Artes',
  ];
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Usuario incidencia",
            style: TextStyle(fontSize: 30, letterSpacing: 2),
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Nombre', labelText: 'Nombre'),
            onChanged: (value) {},
          ),
          //menu desplegable
          Text('Rol'),

          DropdownButtonFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            items: _items
                .map((value) => DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    ))
                .toList(),
            onChanged: (String? value) {},
            isExpanded: true,
            value: _items.first,
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Email', labelText: 'Email'),
            onChanged: (value) {},
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Email', labelText: 'Email'),
            onChanged: (value) {},
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecortions.authInputDecoration(
              hintText: 'contraseña',
              labelText: 'Contraseña',
            ),
            onChanged: (value) {},
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecortions.authInputDecoration(
              hintText: 'contraseña',
              labelText: 'Contraseña',
            ),
            onChanged: (value) {},
          ),
          Center(child: _bottonSent())
        ],
      )),
    );
  }
}

Widget _bottonSent() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      disabledColor: Colors.grey,
      elevation: 0,
      color: Color.fromARGB(211, 196, 19, 19),
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
        child: Text('Enviar', style: TextStyle(color: Colors.white)),
      ),
    );
  });
}
