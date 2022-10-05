import 'package:app_dynamics/ui/appTheme.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CompanyEditScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Editar Empresa",
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

          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Pais', labelText: 'Pais'),
            onChanged: (value) {},
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Ciudad', labelText: 'Ciudad'),
            onChanged: (value) {},
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Distrito', labelText: 'Distrito'),
            onChanged: (value) {},
          ),
          TextFormField(
            decoration: InputDecortions.authInputDecoration(
                hintText: '', labelText: 'Descripcion'),
            minLines:
                6, // any number you need (It works as the rows for the textarea)
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Dirección', labelText: 'Dirección'),
            onChanged: (value) {},
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Contacto', labelText: 'Contacto'),
            onChanged: (value) {},
          ),
          TextFormField(
            //quita autocorreccion
            autocorrect: false,
            keyboardType: TextInputType.phone,
            decoration: InputDecortions.authInputDecoration(
                hintText: 'Telefono', labelText: 'Telefono'),
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
