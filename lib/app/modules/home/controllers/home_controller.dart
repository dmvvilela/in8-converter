import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:in8_converter/app/api/currency_api.dart';
import 'package:in8_converter/app/modules/home/models/currencies_model.dart';

class HomeController extends GetxController {
  final _currencyApi = CurrencyApi();
  final _box = GetStorage();
  final formKey = GlobalKey<FormState>();
  final inputCur = TextEditingController();
  final outputCur = TextEditingController();
  final inputDropdown = "USD".obs;
  final outputDropdown = "BRL".obs;
  final autovalidate = false.obs;
  String errorMessage = "";

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void setInputDropdownValue(value) {
    inputDropdown.value = value;
  }

  void setOutputDropdownValue(value) {
    outputDropdown.value = value;
  }

  void setAutoValidade() => autovalidate.value = true;

  Future<Currencies> convertCurrencies() async {
    if (!formKey.currentState.validate()) {
      errorMessage = "Verifique os valores.";
      return null;
    }

    final currencies = await _currencyApi.getConvertedCurrency(
      inputDropdown.value,
      outputDropdown.value,
    );

    if (currencies == null) {
      errorMessage = "Ocorreu um erro na solicitação.";
      return null;
    }

    final input = double.parse(inputCur.text);
    final converted = Currencies(
      inputCurrency: inputDropdown.value,
      outputCurrency: outputDropdown.value,
      inputValue: input,
      outputValue: currencies.outputValue * input,
      date: currencies.date,
    );

    return converted;
  }

  void saveOnHistory(Currencies currencies) {
    List<dynamic> history = _box.read('history');
    if (history == null) {
      history = List<dynamic>();
    }

    history.add(currencies.toJson());
    _box.write('history', history);
  }
}
