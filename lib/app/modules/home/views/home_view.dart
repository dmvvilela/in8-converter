import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/home/controllers/home_controller.dart';
import 'package:in8_converter/app/modules/home/views/widgets/convert_button.dart';
import 'package:in8_converter/app/modules/home/views/widgets/currency_dropdown.dart';
import 'package:in8_converter/app/modules/home/views/widgets/input_field.dart';
import 'package:in8_converter/app/modules/login/views/widgets/label.dart';
import 'package:in8_converter/app/modules/login/views/widgets/title_bar.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  'assets/images/home_pic.png',
                  excludeFromSemantics: true,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Label('MOEDA A SER CONVERTIDA'),
                CurrencyDropdown(),
                InputField(),
                Padding(padding: EdgeInsets.all(22)),
                ConvertButton(),
                Padding(padding: EdgeInsets.all(22)),
                Label('MOEDA DESEJADA'),
                CurrencyDropdown(),
                InputField(
                  enabled: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
