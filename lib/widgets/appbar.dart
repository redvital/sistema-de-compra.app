import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/appTheme.dart';

class appBarReusable extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 183, 58, 58),
      actions: [
        Container(
          child: IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: CircleAvatar(
              child: const Text('ES'), backgroundColor: Colors.white),
        )
      ],
    );
  }
}
