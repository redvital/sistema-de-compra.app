import 'package:app_dynamics/widgets/appbar.dart';
import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class productionPage extends StatelessWidget {
  static const String routerName = 'Producción y Transito';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            'Produccion y transito',
            style: TextStyle(height: 2, fontSize: 30),
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
            'En Proceso (26)',
            style: TextStyle(height: 2, fontSize: 20),
          ),
          Divider(
            color: Colors.black26,
          ),
          SizedBox(
            height: 5,
          ),
          CardProductions(
            definition: 'definicion',
            example: 'ejemplo',
            type: 'texto',
          ),
          CardProductions(
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

class CardProductions extends StatelessWidget {
  final String type;
  final String definition;
  final String example;

  const CardProductions({
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
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('Inicio de Produccion', style: TextStyle()),
                    SizedBox(
                      width: 5,
                    ),
                    Text('(17/01/2001)',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 35.0,
                      height: 35.0,
                      child: FloatingActionButton(
                        heroTag: null,
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.edit),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('Pago Anticipado', style: TextStyle()),
                    SizedBox(
                      width: 10,
                    ),
                    Text('(17/01/2001)',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('Pago Balance', style: TextStyle()),
                    SizedBox(
                      width: 5,
                    ),
                    Text('(17/01/2001)',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('Fin de Produccion', style: TextStyle()),
                    SizedBox(
                      width: 5,
                    ),
                    Text('(17/01/2001)',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 35.0,
                      height: 35.0,
                      child: FloatingActionButton(
                        heroTag: null,
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.edit),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('Salida puerto de origen', style: TextStyle()),
                    SizedBox(
                      width: 5,
                    ),
                    Text('(17/01/2001)',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 35.0,
                      height: 35.0,
                      child: FloatingActionButton(
                        heroTag: null,
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.edit),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('Transito', style: TextStyle()),
                    SizedBox(
                      width: 5,
                    ),
                    Text('(17/01/2001)',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 35.0,
                      height: 35.0,
                      child: FloatingActionButton(
                        heroTag: null,
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.edit),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('Nacionalizacion', style: TextStyle()),
                    SizedBox(
                      width: 5,
                    ),
                    Text('(17/01/2001)',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_clock),
                    Text('Inicio de Produccion', style: TextStyle()),
                    SizedBox(
                      width: 5,
                    ),
                    Text('(17/01/2001)',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 35.0,
                      height: 35.0,
                      child: FloatingActionButton(
                        heroTag: null,
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.edit),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                            foregroundColor: Colors.blue,
                            backgroundColor: Colors.white,
                            label: Text('Ver Informacion')),
                      ],
                    )),
              ]),
        ),
      ),
    );
  }
}
