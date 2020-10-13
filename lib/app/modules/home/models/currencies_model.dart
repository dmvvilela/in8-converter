class Currencies {
  String inputCurrency;
  double inputValue;
  String outputCurrency;
  double outputValue;
  String date;

  Currencies(
      {this.inputCurrency,
      this.inputValue,
      this.outputCurrency,
      this.outputValue,
      this.date});

  Currencies.fromJson(Map<String, dynamic> json) {
    inputCurrency = json['inputCurrency'];
    inputValue = json['inputValue'];
    outputCurrency = json['outputCurrency'];
    outputValue = json['outputValue'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['inputCurrency'] = this.inputCurrency;
    data['inputValue'] = this.inputValue;
    data['outputCurrency'] = this.outputCurrency;
    data['outputValue'] = this.outputValue;
    data['date'] = this.date;
    return data;
  }
}
