import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/history/controllers/history_controller.dart';
import 'package:in8_converter/app/modules/history/views/conversion_tile.dart';
import 'package:in8_converter/app/modules/home/models/currencies_model.dart';

class HistoryView extends GetView<HistoryController> {
  final _controller = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    final length = _controller.history?.length ?? 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico'),
        centerTitle: true,
      ),
      body: length > 0
          ? ListView.builder(
              itemCount: _controller.history.length,
              itemBuilder: (context, index) {
                final currencies =
                    Currencies.fromJson(_controller.history[index]);
                return ConversionTile(currencies);
              },
            )
          : Center(
              child: Text(
                "Você ainda não realizou\nnenhuma conversão",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Get.theme.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
    );
  }
}
