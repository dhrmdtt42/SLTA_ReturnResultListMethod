class InputListTwo {
  List<InputList2> inputList2;

  InputListTwo({this.inputList2});

  InputListTwo.fromJson(Map<String, dynamic> json) {
    if (json['inputList2'] != null) {
      inputList2 = new List<InputList2>();
      json['inputList2'].forEach((v) {
        inputList2.add(new InputList2.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.inputList2 != null) {
      data['inputList2'] = this.inputList2.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InputList2 {
  String name;
  String expression;

  InputList2({this.name, this.expression});

  InputList2.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    expression = json['expression'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['expression'] = this.expression;
    return data;
  }
}
