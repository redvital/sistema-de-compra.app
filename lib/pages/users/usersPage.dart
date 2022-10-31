import 'dart:convert';
import 'package:app_dynamics/global/environment.dart';
import 'package:app_dynamics/models/listUserResponse.dart';
import 'package:app_dynamics/models/userDataResponse.dart';
import 'package:app_dynamics/provider/usersProviders.dart';
import 'package:app_dynamics/services/services.dart';
import 'package:app_dynamics/ui/appTheme.dart';
import 'package:app_dynamics/widgets/appbar.dart';
//import 'package:app_dynamics/widgets/cardUser.dart';
import 'package:app_dynamics/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;

class UsersPage extends StatefulWidget {
  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: _listUsers(),
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

  Widget _listUsers() {
    final userProvider = Provider.of<UserDataProvider>(context);

    return FutureBuilder(
        future: userProvider.getAll(),
        builder: (_, AsyncSnapshot<List<UserData>> snapshot) {
          if (snapshot.hasData) {
            final userData = snapshot.data;
            return ListView.builder(
                itemCount: userData?.length,
                itemBuilder: (BuildContext context, int i) => GestureDetector(
                      onTap: () {
                        userProvider.selectedUser = userData![i].copy();
                        Navigator.pushNamed(context, 'userEditScreen');
                        print(userData[i].id);
                      },
                      child: _card(userData![i]),
                    ));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget _card(UserData userData) => Card(
        elevation: 5, // Change this
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListTile(
            leading: Icon(Icons.person, color: AppTheme.primary),
            title: Text(userData.name),
            subtitle: Text(userData.rol),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 30),
              const Icon(Icons.email, color: AppTheme.primary),
              Text(userData.email),
            ],
          ),

          //parte de botones
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 68, 183, 72),
                  child: IconButton(
                    icon: const Icon(Icons.edit),
                    color: Colors.white,
                    onPressed: () {
                      //Navigator.pushNamed(context, 'userEditScreen');
                    },
                  ),
                ),
              ],
            ),
          )
        ]),
      );
}
