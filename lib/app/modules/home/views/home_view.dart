import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: AppleSignInButton(
                onPressed: () {},
                text: 'Entrar com Apple',
              ),
            ),
            SizedBox(
              width: 250,
              child: FacebookSignInButton(
                onPressed: () {},
                text: 'Entrar com Facebook',
              ),
            ),
            SizedBox(
              width: 250,
              child: GoogleSignInButton(
                onPressed: () {},
                text: 'Entrar com Google',
              ),
            ),
            SizedBox(
              width: 250,
              child: TwitterSignInButton(
                onPressed: () {},
                text: 'Entrar com Twitter',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
