import 'package:app_dynamics/models/listUserResponse.dart';
import 'package:app_dynamics/services/services.dart';
import 'package:app_dynamics/ui/appTheme.dart';
import 'package:app_dynamics/widgets/appbar.dart';
//import 'package:app_dynamics/widgets/cardUser.dart';
import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsersPage extends StatefulWidget {
  @override
  State<UsersPage> createState() => _UsersPageState();
}

//final usuarioService = new UsersService();

RefreshController _refreshController = RefreshController(initialRefresh: false);

class _UsersPageState extends State<UsersPage> {
  final usuarios = [
    Datum(
      id: 1,
      rol: "coordinador",
      name: "kervis vasquez",
      email: "kervisvasquez24@gmail.com",
      createdAt: null,
      isPresidente: false,
      updatedAt: null,
      deletedAt: null,
      deviceKey: null,
      emailVerifiedAt: null,
    ),
    Datum(
      id: 2,
      rol: "coordinador",
      name: "kervis vasquez",
      email: "kervisvasquez24@gmail.com",
      createdAt: null,
      isPresidente: false,
      updatedAt: null,
      deletedAt: null,
      deviceKey: null,
      emailVerifiedAt: null,
    )
  ];

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    final userListService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: SmartRefresher(
        controller: _refreshController,
        //onRefresh: _cargarUsuarios,
        enablePullDown: true,
        child: _listviewUser(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 183, 58, 58),
        icon: Icon(Icons.add_sharp),
        label: Text('Agregar'),
        onPressed: () {
          // Navigator.pushNamed(context, 'userScreen');
        },
      ),
    );
  }

  ListView _listviewUser() {
    return ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (BuildContext context, index) =>
            _userGestureDetector(usuarios[index], context));
  }

  GestureDetector _userGestureDetector(Datum usuario, BuildContext context) {
    return GestureDetector(
        /* onTap: () {
                userListService.selectedUser =
                    userListService.userList[index].copy();
                Navigator.pushNamed(context, 'userEditScreen');
              },*/
        child: Card(
      elevation: 5, // Change this
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          leading: Icon(Icons.person, color: AppTheme.primary),
          title: Text(usuario.name),
          subtitle: Text(usuario.rol),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 30),
            const Icon(Icons.email, color: AppTheme.primary),
            Text(usuario.email),
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'userEditScreen');
                  },
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
