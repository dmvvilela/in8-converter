import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget implements PreferredSizeWidget {
  const TitleBar({Key key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Conversão de Moeda'),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      centerTitle: false,
      actions: [
        Center(
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Histórico',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        )
      ],
    );
  }
}
