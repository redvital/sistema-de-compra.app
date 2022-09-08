import 'package:app_dynamics/widgets/appbar.dart';
import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class companyPage extends StatelessWidget {
  static const String routerName = 'Empresas';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            'Empresas',
            style: TextStyle(height: 2, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
            heroTag: "btn1",
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
          WordOfTheDayWidget(
            definition: 'definicion',
            example: 'ejemplo',
            type: 'texto',
          ),
          //separacion entre cards
          SizedBox(height: 5),
        ]),
      ),
    );
  }
}

class WordOfTheDayWidget extends StatelessWidget {
  final String type;
  final String definition;
  final String example;

  const WordOfTheDayWidget({
    super.key,
    required this.type,
    required this.definition,
    required this.example,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Change this
      shadowColor: Colors.black54,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListTile(
            title: Text(
              'Empresas 1',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Divider(color: Colors.black),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas dolor in placerat scelerisque. Praesent tempor lectus sed interdum interdum. Phasellus molestie purus urna,',
            style: TextStyle(fontSize: 15),
          ),
          ListTile(
            title: Text(
              'Ubicación',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Text(
            'Pais:',
            style: TextStyle(fontSize: 15),
          ),
          Text(
            'Ciudad:',
            style: TextStyle(fontSize: 15),
          ),
          Text(
            'Distrito:',
            style: TextStyle(fontSize: 15),
          ),
          Text(
            'Direccion:',
            style: TextStyle(fontSize: 15),
          ),
          ListTile(
            title: Text(
              'Contacto',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Text(
            'Contacto:',
            style: TextStyle(fontSize: 15),
          ),
          Text(
            'Telefono:',
            style: TextStyle(fontSize: 15),
          ),
          Text(
            'Email:',
            style: TextStyle(fontSize: 15),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton.extended(
                      heroTag: "btn2",
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      onPressed: () {
                        print('hola');
                      },
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      icon: Icon(Icons.edit),
                      label: Text('Editar'))
                ],
              )),
        ]),
      ),
    );
  }
}
