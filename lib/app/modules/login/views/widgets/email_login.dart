import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/home/views/home_view.dart';
import 'package:in8_converter/app/modules/login/controllers/login_controller.dart';

class EmailLogin extends StatelessWidget {
  final _controller = Get.find<LoginController>();

  void _submit(BuildContext context) {
    if (_controller.login())
      Get.to(HomeView());
    else {
      _controller.setAutoValidate();

      Get.snackbar(
        'Ocorreu um Erro',
        'Verifique suas credenciais',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _controller.formKey,
      autovalidateMode: _controller.autoValidate.value
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Material(
              child: TextFormField(
                controller: _controller.email,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  labelText: 'Email:',
                  prefixIcon: Icon(Icons.email),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.all(10),
                ),
                // autofocus: true,
                keyboardType: TextInputType.emailAddress,
                validator: (input) =>
                    GetUtils.isEmail(input) ? null : "Email inválido.",
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Material(
              child: TextFormField(
                controller: _controller.password,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(25.0),
                  // ),
                  isDense: true,
                  labelText: 'Senha:',
                  prefixIcon: Icon(Icons.lock),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.all(10),
                ),
                obscureText: true,
                validator: (input) => GetUtils.isLengthGreaterThan(input, 5)
                    ? null
                    : "Senha inválida.",
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15)),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () => _submit(context),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              child: Text(
                'ENTRAR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
