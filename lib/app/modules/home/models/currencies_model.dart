class Currencies {
  String input;
  String output;

  Currencies({this.input, this.output});

  Currencies.fromJson(Map<String, dynamic> json) {
    input = json['input'];
    output = json['output'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['input'] = this.input;
    data['output'] = this.output;
    return data;
  }
}
