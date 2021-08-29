Map<String, dynamic> jsonList1 = {
  "inputList1": [
    {"name": "mass", "type": "number", "value": 900},
    {"name": "length", "type": "number", "value": 2},
    {"name": "width", "type": "number", "value": 1},
    {"name": "height", "type": "number", "value": 5},
    {"name": "densityOption", "type": "string", "value": "specGravity"}
  ]
};

Map<String, dynamic> jsonList2 = {
  "inputList2": [
    {"name": "volume", "expression": "length * width * height"},
    {
      "name": "density",
      "expression":
          "IIF(densityOption == 'specGravity', mass /(length * width * height * 0.9), mass / (length* width * height))"
    }
  ]
};
