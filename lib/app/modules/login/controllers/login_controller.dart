import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final autoValidate = false.obs;

  void setAutoValidate() => autoValidate.value = true;

  bool login() {
    return formKey.currentState.validate();
  }
}
