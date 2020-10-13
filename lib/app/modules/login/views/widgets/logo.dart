import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  const Logo({Key key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    animation = Tween(begin: 0.0, end: 1.0)
        .chain(CurveTween(curve: Curves.decelerate))
        .animate(animationController)
          ..addListener(() {
            setState(() {});
          });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 32.0, 30.0, 20.0),
      child: ScaleTransition(
        scale: animation,
        child: FadeTransition(
          opacity: animation,
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ),
    );
  }
}
