import 'package:flutter/material.dart';

import 'Widgets/slide_tile.dart';

class WhenPage extends StatefulWidget {
  static const _listSlide = [
    {'id': 0, 'image': 'assets/images/1888.webp', 'year': '1888'},
    {'id': 1, 'image': 'assets/images/1921.webp', 'year': '1921'},
    {'id': 2, 'image': 'assets/images/1953.webp', 'year': '1953'},
    {'id': 3, 'image': 'assets/images/1986.webp', 'year': '1986'},
    {'id': 4, 'image': 'assets/images/2019.webp', 'year': '2019'},
    {'id': 5, 'image': 'assets/images/2052.webp', 'year': '2052'},
  ];

  @override
  _WhenPageState createState() => _WhenPageState();
}

class _WhenPageState extends State<WhenPage> {
  final PageController _pageController = PageController(viewportFraction: 0.9);

  int _currentPage = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page.round();
      if (next != _currentPage) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: PageView.builder(
        controller: _pageController,
        itemCount: WhenPage._listSlide.length,
        itemBuilder: (_, currentIndex) {
          bool activePage = currentIndex == _currentPage;
          return Container(
              child: SlideTile(
            activePage: activePage,
            image: WhenPage._listSlide[currentIndex]['image'],
            year: WhenPage._listSlide[currentIndex]['year'],
          ));
        },
      )),
    );
  }
}
