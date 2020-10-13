import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key key}) : super(key: key);

  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  // TODO: Usar controller
  final _formKey = GlobalKey<FormState>();
  String _email, _password, _errorMessage;

  void _submit(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Material(
              child: TextFormField(
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
                onSaved: (input) => _email = input,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Material(
              child: TextFormField(
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
                onSaved: (input) => _password = input,
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
