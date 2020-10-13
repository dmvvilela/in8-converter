import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/home/controllers/home_controller.dart';
import 'package:in8_converter/app/modules/home/views/widgets/convert_button.dart';
import 'package:in8_converter/app/modules/home/views/widgets/currency_dropdown.dart';
import 'package:in8_converter/app/modules/home/views/widgets/input_field.dart';
import 'package:in8_converter/app/modules/login/views/widgets/label.dart';
import 'package:in8_converter/app/modules/login/views/widgets/title_bar.dart';

class HomeView extends GetView<HomeController> {
  final _controller = Get.put(HomeController());

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
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Container(
              width: double.infinity,
              height: Get.mediaQuery.size.height - kToolbarHeight - 28,
              padding: EdgeInsets.all(28),
              child: Obx(
                () => Form(
                  key: _controller.formKey,
                  autovalidateMode: _controller.autovalidate.value
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Label('MOEDA A SER CONVERTIDA'),
                      Obx(
                        () => CurrencyDropdown(
                          _controller.inputDropdown.value,
                          _controller.setInputDropdownValue,
                        ),
                      ),
                      InputField(_controller.inputCur),
                      Padding(padding: EdgeInsets.all(22)),
                      ConvertButton(),
                      Padding(padding: EdgeInsets.all(22)),
                      Label('MOEDA DESEJADA'),
                      Obx(
                        () => CurrencyDropdown(
                          _controller.outputDropdown.value,
                          _controller.setOutputDropdownValue,
                        ),
                      ),
                      InputField(
                        _controller.outputCur,
                        enabled: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
