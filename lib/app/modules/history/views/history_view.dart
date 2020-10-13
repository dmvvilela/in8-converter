import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/history/controllers/history_controller.dart';
import 'package:in8_converter/app/modules/history/views/conversion_tile.dart';

class HistoryView extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // ConversionTile(),
        ],
      ),
    );
  }
}
