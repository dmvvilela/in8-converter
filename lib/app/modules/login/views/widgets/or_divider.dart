import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Text(
          '   OU   ',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
