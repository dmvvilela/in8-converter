import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  void _socialLogin(BuildContext context, String provider) {}

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            height: 60,
            width: 60,
            child: RaisedButton(
              child: Image.asset('assets/images/facebook_logo.png'),
              shape: StadiumBorder(),
              color: const Color(0xFF3B579D),
              onPressed: () {
                _socialLogin(context, 'facebook');
              },
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            height: 60,
            width: 60,
            child: RaisedButton(
              child: Transform.scale(
                scale: 1.1,
                child: Image.asset('assets/images/apple_logo_white_2.png'),
              ),
              shape: StadiumBorder(),
              color: Colors.black87,
              onPressed: () {
                _socialLogin(context, 'apple');
              },
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            height: 60,
            width: 60,
            child: RaisedButton(
              child: Image.asset('assets/images/google_logo.png'),
              shape: StadiumBorder(),
              color: Colors.white,
              onPressed: () {
                _socialLogin(context, 'google');
              },
            ),
          ),
        ),
      ],
    );
  }
}
