import 'package:app_dynamics/widgets/appbar.dart';
import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class receptionPage extends StatelessWidget {
  static const String routerName = 'Recepción Reclamos y Devoluciones';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            'Recepción Reclamos y Devoluciones',
            style: TextStyle(height: 2, fontSize: 30),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 20,
          ),

          Text(
            'En Proceso (26)',
            style: TextStyle(height: 2, fontSize: 20),
          ),
          Divider(
            color: Colors.black26,
          ),
          SizedBox(
            height: 5,
          ),
          CardReception(
            definition: 'definicion',
            example: 'ejemplo',
            type: 'texto',
          ),
          CardReception(
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

class CardReception extends StatelessWidget {
  final String type;
  final String definition;
  final String example;

  const CardReception({
    super.key,
    required this.type,
    required this.definition,
    required this.example,
  });
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
                Slider(
                    min: 50,
                    max: 400,
                    value: 100,
                    divisions: 2,
                    activeColor: Colors.amber,
                    onChanged: (value) {}),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        FloatingActionButton.extended(
                            heroTag: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () {
                              print('hola');
                            },
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.amber,
                            icon: Icon(Icons.check_box),
                            label: Text('Recepcion')),
                        SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton.extended(
                            heroTag: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () {
                              print('hola');
                            },
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            icon: Icon(Icons.inbox),
                            label: Text('Reclamos y Devoluciones')),
                        SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton.extended(
                            heroTag: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () {
                              print('hola');
                            },
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red,
                            icon: Icon(Icons.info_outline_rounded),
                            label: Text('Inspeccion')),
                      ],
                    )),
              ]),
        ),
      ),
    );
  }
}
