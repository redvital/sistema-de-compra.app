import 'dart:convert';
import 'package:app_dynamics/global/environment.dart';
import 'package:app_dynamics/models/listUserResponse.dart';
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
  final List<Datum> users = [];
  bool isLoading = true;

  late Future<List<Datum>> _listadoUsers;
  Future<List<Datum>> _loadUser() async {
    this.isLoading = true;

    final resp =
        await http.get(Uri.parse('${Environment.apiUrl}/user'), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + await AuthService.getToken(),
    });
    final result = json.decode(resp.body);
    List<dynamic> datas = result["data"];

    String body = utf8.decode(resp.bodyBytes);
    final jsonData = jsonDecode(body);
    for (var item in jsonData["data"]) {
      users.add(Datum(
          id: item["id"],
          rol: item["rol"],
          name: item["name"],
          email: item["email"],
          emailVerifiedAt: ["emailVerifiedAt"],
          deletedAt: item["deletedAt"],
          deviceKey: item["deviceKey"],
          isPresidente: item["isPresidente"],
          createdAt: item["createdAt"],
          updatedAt: item["updatedAt"]));
    }

    return users;
  }

  @override
  void initState() {
    super.initState();
    _listadoUsers = _loadUser();
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      appBar: appBarReusable(),
      drawer: SideMenu(),
      body: FutureBuilder(
        future: _listadoUsers,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data);
            return ListView(
              children: _lisUsers(snapshot.data as List<Datum>),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Text("Error");
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
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
}

List<Widget> _lisUsers(List<Datum> data) {
  List<Widget> users = [];
  for (var user in data) {
    users.add(Card(
      elevation: 5, // Change this
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          leading: Icon(Icons.person, color: AppTheme.primary),
          title: Text(user.name),
          subtitle: Text(user.rol),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 30),
            const Icon(Icons.email, color: AppTheme.primary),
            Text(user.email),
          ],
        ),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 30),
            const Icon(Icons.calendar_today, color: AppTheme.primary),
            Text(user.createdAt),
          ],
        ),*/
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
                    //Navigator.pushNamed(context, 'userEditScreen');
                  },
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
  return users;
}
