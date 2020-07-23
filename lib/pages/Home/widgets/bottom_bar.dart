import 'package:flutter/material.dart';

class BottomBarDark extends StatefulWidget {
  @override
  _BottomBarDarkState createState() => _BottomBarDarkState();
}

class _BottomBarDarkState extends State<BottomBarDark> {
  int selectedIndex = 0;

  List<NavigationItem> items = [
    NavigationItem(
        icon: Icon(Icons.hourglass_empty),
        title: Text('When?',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w300))),
    NavigationItem(
        icon: Icon(
          Icons.search,
        ),
        title: Text('Who?',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w300))),
    NavigationItem(
        icon: Icon(
          Icons.lightbulb_outline,
        ),
        title: Text('Quotes',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w300))),
  ];

  Widget buildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isSelected ? 100 : 50,
      height: 40,
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(30))
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: IconTheme(
                  child: item.icon,
                  data: IconThemeData(
                      size: 24,
                      color: isSelected ? Colors.white : Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: isSelected ? item.title : Container(),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) {
          int itemIndex = items.indexOf(item);
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = itemIndex;
              });
            },
            child: buildItem(item, itemIndex == selectedIndex ? true : false),
          );
        }).toList(),
      ),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;

  NavigationItem({this.icon, this.title});
}
