import 'package:flutter/material.dart';

class HelloTraveler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          height: 100,
          color: Colors.black,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            color: Colors.white,
          ),
          height: 100,
          width: _width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('H E L L O',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        letterSpacing: 3)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('T R A V E L E R',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        letterSpacing: 3)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
