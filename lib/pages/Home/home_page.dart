import 'package:dark/pages/When/when_page.dart';
import 'package:flutter/material.dart';
import 'widgets/app_bar.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/hello_traveler.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarDark(),
      body: Column(
        children: <Widget>[HelloTraveler(), WhenPage()],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white, style: BorderStyle.solid, width: 3),
            shape: BoxShape.circle),
        child: FloatingActionButton(
          child: Icon(Icons.all_inclusive),
          onPressed: () {},
          backgroundColor: Colors.black,
          elevation: 5,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomBarDark(),
    );
  }
}
