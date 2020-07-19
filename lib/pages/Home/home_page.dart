import 'package:dark/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 10.0),
                  child: Text('H E L L O',
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          letterSpacing: 3)),
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
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range), title: Text('When')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Who')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.all_inclusive),
        onPressed: () {},
        backgroundColor: Colors.black,
        elevation: 5,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
