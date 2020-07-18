import 'package:dark/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
              wordSpacing: 3),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
