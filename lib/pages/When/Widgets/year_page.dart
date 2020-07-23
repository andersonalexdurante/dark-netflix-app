import 'package:flutter/material.dart';

class YearPage extends StatelessWidget {
  final image;
  final year;

  const YearPage({Key key, this.image, this.year}) : super(key: key);

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
  Widget build(BuildContext context) {
    final TextStyle style = Theme.of(context).textTheme.headline6.copyWith(
      color: Colors.white,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w300,
      fontSize: 33,
      letterSpacing: 10,
      shadows: [
        Shadow(color: Colors.white, blurRadius: 10, offset: Offset(1, 1)),
      ],
    );
    return Row(
      children: <Widget>[
        Expanded(
          child: Hero(
            flightShuttleBuilder: _flightShuttleBuilder,
            tag: this.year,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(this.image), fit: BoxFit.cover),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  Text(
                    this.year,
                    style: style,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
