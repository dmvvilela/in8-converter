import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  const InputField(this.controller, {this.enabled = true, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(hintText: 'Valor'),
        enabled: enabled,
      ),
    );
  }
}
