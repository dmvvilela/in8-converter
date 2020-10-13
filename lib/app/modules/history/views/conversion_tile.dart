import 'package:flutter/material.dart';
import 'package:in8_converter/app/modules/home/models/currencies_model.dart';

class ConversionTile extends StatelessWidget {
  final Currencies currencies;
  const ConversionTile(this.currencies, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text('${currencies.inputCurrency} ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('${currencies.inputValue} '),
          Icon(Icons.arrow_right),
          Text(' ${currencies.outputCurrency} ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('3${currencies.outputValue}'),
        ],
      ),
      subtitle: Text('${currencies.date}'),
    );
  }
}
