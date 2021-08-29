class InputListOne {
  List<InputList1> inputList1;

  InputListOne({this.inputList1});

  InputListOne.fromJson(Map<String, dynamic> json) {
    if (json['inputList1'] != null) {
      inputList1 = new List<InputList1>();
      json['inputList1'].forEach((v) {
        inputList1.add(new InputList1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.inputList1 != null) {
      data['inputList1'] = this.inputList1.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InputList1 {
  String name;
  String type;
  var value;

  InputList1({this.name, this.type, this.value});

  InputList1.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['value'] = this.value;
    return data;
  }
}
