import 'package:app_dynamics/models/listUserResponse.dart';
import 'package:app_dynamics/ui/appTheme.dart';
import 'package:flutter/material.dart';

class CardUser extends StatelessWidget {
  final Datum user;

  const CardUser({super.key, required this.user});

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
    );
  }
}
