import 'package:app_dynamics/ui/appTheme.dart';
import 'package:app_dynamics/widgets/appbar.dart';

import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  static const String routerName = 'usuarios';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
            //esto crea el pagging
            //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              Text(
                'Usuarios',
                style: TextStyle(height: 2, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
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
              CardUser(),
              CardUser(),
              CardUser(),
              CardUser(),
              CardUser(),
              //separacion entre cards
              SizedBox(height: 5),
            ]),
      ),
    );
  }
}

class CardUser extends StatelessWidget {
  const CardUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Change this
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          leading: Icon(Icons.person, color: AppTheme.primary),
          title: Text('Comprador'),
          subtitle: Text('Coordinador'),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 30),
            const Icon(Icons.email, color: AppTheme.primary),
            const Text("correo@correo.com"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 30),
            const Icon(Icons.calendar_today, color: AppTheme.primary),
            const Text("Creado el 15 de febrero de 2001"),
          ],
        ),
        //parte de botones
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 68, 183, 72),
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
