import 'package:flutter/material.dart';

import 'year_page.dart';

class SlideTile extends StatefulWidget {
  final image;
  final year;
  final activePage;

  const SlideTile({Key key, this.image, this.year, this.activePage})
      : super(key: key);

  @override
  _SlideTileState createState() => _SlideTileState();
}

class _SlideTileState extends State<SlideTile> {
  Widget _flightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double top = this.widget.activePage ? 20 : 60;
    final double blur = this.widget.activePage ? 30 : 0;
    final double offset = this.widget.activePage ? 3 : 0;
    final TextStyle style = Theme.of(context).textTheme.headline6.copyWith(
      color: Colors.white,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.bold,
      fontSize: 33,
      letterSpacing: 10,
      shadows: [
        Shadow(color: Colors.white, blurRadius: 10, offset: Offset(1, 1)),
      ],
    );
    return InkWell(
      onTap: () => Navigator.push(
          context,
          PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 500),
              pageBuilder: (context, animation, secondaryAnimation) => YearPage(
                    image: this.widget.image,
                    year: this.widget.year,
                  ))),
      child: Hero(
        flightShuttleBuilder: _flightShuttleBuilder,
        tag: this.widget.year,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOutQuad,
          margin: EdgeInsets.only(top: top, right: 30, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage(this.widget.image), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.white70.withOpacity(0.3),
                  blurRadius: blur,
                  offset: Offset(offset, offset))
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  this.widget.year,
                  style: style,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
