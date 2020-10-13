import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/history/views/history_view.dart';

class TitleBar extends StatelessWidget implements PreferredSizeWidget {
  const TitleBar({Key key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Conversão de Moeda'),
      // leading: IconButton(
      //   icon: Icon(Icons.menu),
      //   onPressed: () {},
      // ),
      leading: PopupMenuButton<String>(
        icon: Icon(Icons.menu),
        onSelected: (String result) {
          Get.back();
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'logout',
            child: Text('Sair'),
          ),
        ],
      ),
      centerTitle: false,
      actions: [
        Center(
          child: InkWell(
            onTap: () {
              Get.to(HistoryView());
            },
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
