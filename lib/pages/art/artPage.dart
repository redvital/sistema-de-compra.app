import 'dart:ui';

import 'package:app_dynamics/widgets/appbar.dart';
import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class ArtPage extends StatelessWidget {
  static const String routerName = 'arte';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            'Artes',
            style: TextStyle(height: 2, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
            heroTag: null,
            backgroundColor: Color.fromARGB(255, 183, 58, 58),
            icon: Icon(Icons.add_sharp),
            label: Text('Agregar'),
            onPressed: () {
              print('presed');
            },
          ),

          SizedBox(
            height: 20,
          ),
          TextFormArt(),
          TextFormArt(),
          //separacion entre cards
          SizedBox(height: 5),
        ]),
      ),
    );
  }
}

class TextFormArt extends StatelessWidget {
  const TextFormArt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5, // Change this
        shadowColor: Colors.black54,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.qr_code),
                    Text(
                      'codigo: ',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      '444444',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Creacion de Fichas'),
                DropdownButtonFormField<String>(items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('admin')),
                  DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                  DropdownMenuItem(value: 'dev', child: Text('dev')),
                ], onChanged: (value) {}),
                SizedBox(
                  height: 10,
                ),
                Text('20 de julio de 2001 (1 meses)'),
                SizedBox(
                  height: 10,
                ),
                Text('Validacion de Fichas'),
                DropdownButtonFormField<String>(items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('admin')),
                  DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                  DropdownMenuItem(value: 'dev', child: Text('dev')),
                ], onChanged: (value) {}),
                SizedBox(
                  height: 10,
                ),
                Text('20 de julio de 2001 (1 meses)'),
                SizedBox(
                  height: 10,
                ),
                Text('Creacion de boletos'),
                DropdownButtonFormField<String>(items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('admin')),
                  DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                  DropdownMenuItem(value: 'dev', child: Text('dev')),
                ], onChanged: (value) {}),
                SizedBox(
                  height: 10,
                ),
                Text('20 de julio de 2001 (1 meses)'),
                SizedBox(
                  height: 10,
                ),
                Text('Validacion de boletos'),
                DropdownButtonFormField<String>(items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('admin')),
                  DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                  DropdownMenuItem(value: 'dev', child: Text('dev')),
                ], onChanged: (value) {}),
                SizedBox(
                  height: 10,
                ),
                Text('20 de julio de 2001 (1 meses)'),
                SizedBox(
                  height: 10,
                ),
                Text('confirmacion de proovedor'),
                DropdownButtonFormField<String>(items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('admin')),
                  DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                  DropdownMenuItem(value: 'dev', child: Text('dev')),
                ], onChanged: (value) {}),
                SizedBox(
                  height: 10,
                ),
                Text('20 de julio de 2001 (1 meses)'),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FloatingActionButton.extended(
                            heroTag: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () {
                              print('hola');
                            },
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green,
                            label: Text('Administrar')),
                      ],
                    )),
              ]),
        ),
      ),
    );
  }
}
