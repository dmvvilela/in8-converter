import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final bool enabled;
  const InputField({this.enabled = true, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Valor'),
        enabled: enabled,
      ),
    );
  }
}
