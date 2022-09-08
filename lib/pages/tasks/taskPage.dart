import 'package:app_dynamics/widgets/appbar.dart';
import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  static const String routerName = 'Asignación de Tareas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            'Tareas',
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
          CardTask(
            definition: 'definicion',
            example: 'ejemplo',
            type: 'texto',
          ),
          CardTask(
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

class CardTask extends StatelessWidget {
  final String type;
  final String definition;
  final String example;

  const CardTask({
    super.key,
    required this.type,
    required this.definition,
    required this.example,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 300,
      child: Card(
        elevation: 5, // Change this
        shadowColor: Colors.black54,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nombre del proyecto',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.red,
                    ),
                    Text('Usuario')
                  ],
                ),
                Divider(color: Colors.black),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: size.width - 105),
                      child: Text(
                        ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dignissim tristique neque, quis eleifend erat volutpat ac. Duis semper velit nulla, in imperdiet quam sagittis id. Phasellus tristique quam at imperdiet pharetra. In dignissim nunc leo, et rhoncus sapien dapibus eu. Quisque porttitor dignissim tincidunt'),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    Text('1 empresa'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_clock,
                      color: Colors.red,
                    ),
                    Text(
                      '31 dias de enero (31 dias restantes)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        FloatingActionButton.extended(
                            heroTag: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            onPressed: () {
                              print('hola');
                            },
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green,
                            icon: Icon(Icons.edit),
                            label: Text('Editar')),
                        FloatingActionButton(
                          heroTag: null,
                          onPressed: () {},
                          backgroundColor: Color.fromARGB(255, 183, 58, 58),
                          child: const Icon(Icons.delete),
                        ),
                      ],
                    )),
              ]),
        ),
      ),
    );
  }
}
