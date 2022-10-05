import 'package:app_dynamics/widgets/appbar.dart';
import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class NegotiationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            'Negociaciones',
            style: TextStyle(height: 2, fontSize: 40),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 20,
          ),
          Text(
            'Resumen',
            style: TextStyle(height: 2, fontSize: 20),
          ),
          CardDetails(),
          Text(
            'Seleccionados (26)',
            style: TextStyle(height: 2, fontSize: 20),
          ),
          Divider(
            color: Colors.black26,
          ),
          SizedBox(
            height: 5,
          ),
          CardNegotiations(
            definition: 'definicion',
            example: 'ejemplo',
            type: 'texto',
          ),
          CardNegotiations(
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

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.green,
                ),
                child: Icon(
                  Icons.mark_as_unread_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text('888888', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Total USD',
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
                child: Icon(
                  Icons.desktop_windows_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text('888888', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Total USD',
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
                child: Icon(
                  Icons.check_box_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text('888888', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Total USD',
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blueGrey,
                ),
                child: Icon(
                  Icons.description_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text('888888', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Total USD',
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
                child: Icon(
                  Icons.king_bed,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text('888888', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Total USD',
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class CardNegotiations extends StatelessWidget {
  final String type;
  final String definition;
  final String example;

  const CardNegotiations({
    super.key,
    required this.type,
    required this.definition,
    required this.example,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 200,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.emoji_transportation_rounded,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Proveedor: nombre del proveedor',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.description_rounded,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Tarea: Nombre de la tarea',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dangerous,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'aun no se han confirmado los productos',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_clock,
                      color: Colors.red,
                    ),
                    Text(
                      'Finaliza en 1 dias',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                                label: Text('Ver Detalles')),
                          ],
                        )),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
