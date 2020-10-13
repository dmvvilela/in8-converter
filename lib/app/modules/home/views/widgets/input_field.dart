import 'package:flutter/material.dart';
import 'package:get/utils.dart';

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
        decoration: InputDecoration(
          hintText: 'Valor',
          filled: true,
          fillColor: Colors.white,
        ),
        enabled: enabled,
        validator: (value) {
          return !enabled
              ? null
              : GetUtils.isNum(value)
                  ? null
                  : "Apenas números";
        },
      ),
    );
  }
}
