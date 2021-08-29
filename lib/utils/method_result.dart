import 'package:seven_lakes/utils/computed_attribute.dart';
import 'package:seven_lakes/utils/input_list1.dart';
import 'package:seven_lakes/utils/input_list2.dart';

InputListOne list1 = new InputListOne();
InputListTwo list2 = new InputListTwo();
List<Result> computedList = new List<Result>();
var mass;
var length;
var width;
var height;
var densityOption;
var volume;
var density;
String resultListItems;

List<Result> getComputedResult(List<InputList1> list1, List<InputList2> list2) {
  List<Result> resultList = new List<Result>();
  var md;

  for (int i = 0; i < list1.length; i++) {
    if (list1[i].name == "mass") {
      mass = list1[i].value;
    }
    if (list1[i].name == "length") {
      length = list1[i].value;
    }
    if (list1[i].name == "width") {
      width = list1[i].value;
    }
    if (list1[i].name == "height") {
      height = list1[i].value;
    }
    if (list1[i].name == "densityOption") {
      densityOption = list1[i].value;
    }
  }

  for (int j = 0; j < list2.length; j++) {
    if (list2[j].name == "volume") {
      List<String> volExp = list2[j].expression.split("x");
      if (volExp.contains("length * width * height")) {
        Result resultData = new Result();
        resultData.name = list2[j].name;
        resultData.value = length * width * height;
        resultList.add(resultData);
      }
    }
    if (list2[j].name == "density") {
      density = list2[j]
          .expression
          .replaceAll("(", "")
          .toString()
          .replaceAll(")", "")
          .toString()
          .replaceAll("IIF", "");
      List<String> listexp = density.toString().split(",");
      Result resData = new Result();
      resData.name = list2[j].name;
      if (listexp.contains("densityOption == 'specGravity'") &&
          densityOption == 'specGravity') {
        md = mass / (length * width * height * 0.9);
        resData.value = md.round();
      } else {
        md = mass / (length * width * height);
        resData.value = md.round();
      }
      resultList.add(resData);
    }
  }
  return resultList;
}
