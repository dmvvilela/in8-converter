import 'dart:convert';

import 'package:in8_converter/app/modules/home/models/currencies_model.dart';
import 'package:http/http.dart' as http;

class CurrencyApi {
  final _baseUrl = "https://api.exchangeratesapi.io/latest";

  Future<Currencies> getConvertedCurrency(
      String inputCur, String outputCur) async {
    try {
      final res =
          await http.get(_baseUrl + "?symbols=$outputCur&base=$inputCur");

      if (res.statusCode == 200) {
        final data = Currencies.fromJson(jsonDecode(res.body));
        print(data);
        return data;
      }
    } catch (e) {
      print(e);
    }

    return null;
  }
}
