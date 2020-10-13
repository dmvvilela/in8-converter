import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String label;
  const Label(this.label, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        label,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
