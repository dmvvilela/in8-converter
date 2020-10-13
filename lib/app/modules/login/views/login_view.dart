import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/login/controllers/login_controller.dart';
import 'package:in8_converter/app/modules/login/views/widgets/logo.dart';
import 'package:in8_converter/app/modules/login/views/widgets/social_login.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  'assets/images/start_pic.png',
                  excludeFromSemantics: true,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 32, left: 32, right: 32, bottom: 64),
              child: Column(
                children: [
                  Logo(),
                  Spacer(),
                  SocialLogin(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
