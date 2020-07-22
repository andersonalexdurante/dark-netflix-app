import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AppBarDark extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
          children: <Widget>[
            Image.asset(
              AppConstants.triquetra,
              height: 33,
              width: 33,
            )
          ],
        ),
      ),
      title: Text(
        'D A R K',
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w200,
            letterSpacing: 3),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
