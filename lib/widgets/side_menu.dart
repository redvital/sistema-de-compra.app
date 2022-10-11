import 'package:app_dynamics/routes/routes.dart';
import 'package:app_dynamics/services/authServies.dart';
import 'package:flutter/material.dart';

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
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Usuarios'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'user');
            },
          ),
          ListTile(
            leading: const Icon(Icons.business_sharp),
            title: const Text('Empresas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'company');
            },
          ),
          ListTile(
            leading: const Icon(Icons.task_alt_rounded),
            title: const Text('Asignación de Tareas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'task');
            },
          ),
          ListTile(
            leading: const Icon(Icons.playlist_add_check),
            title: const Text('Mis Tareas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'mytask');
            },
          ),
          ListTile(
            leading: const Icon(Icons.handshake_outlined),
            title: const Text('Negociaciones'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'negotiations');
            },
          ),
          ListTile(
            leading: const Icon(Icons.app_registration_sharp),
            title: const Text('Artes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'art');
            },
          ),
          ListTile(
            leading: const Icon(Icons.precision_manufacturing_rounded),
            title: const Text('Producción y Transito'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'production');
            },
          ),
          ListTile(
            leading: const Icon(Icons.production_quantity_limits),
            title: const Text('Recepción Reclamos y Devoluciones'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'reception');
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Cerrar Sesión'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'login');
              AuthService.deleteToken();
            },
          ),
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
