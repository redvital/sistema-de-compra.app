import 'package:app_dynamics/pages/art/artPage.dart';
import 'package:app_dynamics/pages/home/homePage.dart';

import 'package:app_dynamics/pages/companies/companyPage.dart';
import 'package:app_dynamics/pages/negotiations/negotiationsPage.dart';
import 'package:app_dynamics/pages/tasks/taskPage.dart';
import 'package:app_dynamics/pages/reception/receptionPage.dart';
import 'package:app_dynamics/pages/production/productionPage.dart';
import 'package:app_dynamics/pages/mytasks/mytaskPage.dart';
import 'package:app_dynamics/pages/users/usersPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeader(),
          //con esto se genera una lista que muestra los elementos a presionar
          ListTile(
            leading: const Icon(Icons.home_sharp),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Usuarios'),
            onTap: () {
              Navigator.pushReplacementNamed(context, UsersPage.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.business_sharp),
            title: const Text('Empresas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, companyPage.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.task_alt_rounded),
            title: const Text('Asignación de Tareas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, TaskPage.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.playlist_add_check),
            title: const Text('Mis Tareas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, myTaskPage.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.handshake_outlined),
            title: const Text('Negociaciones'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, NegotiationsPage.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.app_registration_sharp),
            title: const Text('Artes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, ArtPage.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.precision_manufacturing_rounded),
            title: const Text('Producción y Transito'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, productionPage.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.production_quantity_limits),
            title: const Text('Recepción Reclamos y Devoluciones'),
            onTap: () {
              Navigator.pushReplacementNamed(context, receptionPage.routerName);
            },
          ),

          /*ListTile(
            leading: const Icon(Icons.settings_applications),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, SettingsScreens.routerName);
            },
          ),*/
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/logo.png'),
        //con esto la imagen agarra todo el ancho
      )),
    );
  }
}
